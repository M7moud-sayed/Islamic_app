import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 50, left: 50),
          child: Image.asset("assets/images/radio_header.jpg"),
        ),
      ),
      SizedBox(height: 100),
      Center(
          child: Text(
        AppLocalizations.of(context)!.holyQuranRadio,
        style: TextStyle(
            fontSize: 24,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold),
      )),
      SizedBox(height: 100),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.skip_previous_rounded,
            size: 28,
            color: provider.theme==ThemeMode.dark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
          Icon(
            Icons.play_circle_filled_rounded,
            size: 35,
            color: provider.theme==ThemeMode.dark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
          Icon(
            Icons.skip_next_rounded,
            size: 28,
            color: provider.theme==ThemeMode.dark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
        ],
      )
    ]);
  }
}
