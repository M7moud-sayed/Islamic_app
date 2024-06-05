import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.theme == ThemeMode.dark ? "Dark" : "Light"),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
                provider.changeTheme(provider.theme == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark);
              },
              child: getUnselectedItem(
                  provider.theme == ThemeMode.dark ? "Light" : "Dark")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check_circle_rounded,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String theme) {
    return Text(
      theme,
      style: TextStyle(color: Theme.of(context).dividerColor, fontSize: 18),
    );
  }
}
