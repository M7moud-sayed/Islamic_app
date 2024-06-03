import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:islamic_app/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islamic_app/ui/home/home_screen.dart';
import 'package:islamic_app/ui/quran_details/quran_details_screen.dart';
import 'package:islamic_app/ui/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale("en"),
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: AppTheme.isDark?ThemeMode.dark:ThemeMode.light,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
    );
  }
}