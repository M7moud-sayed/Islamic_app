import 'package:flutter/material.dart';
import 'package:islamic_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language == "ar" ? "العربية" : "English"),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
                provider
                    .changeLanguage(provider.language == "ar" ? "en" : "ar");
              },
              child: getUnselectedItem(
                  provider.language == "ar" ? "English" : "العربية")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
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

  Widget getUnselectedItem(String language) {
    return Text(
      language,
      style: TextStyle(color: Theme.of(context).dividerColor, fontSize: 18),
    );
  }
}
