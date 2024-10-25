import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          color: Color(0xff5D9CEC),
          width: double.infinity,
          height: 170,
          child: Text(
            "Settings",
            style: theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
