import 'package:flutter/material.dart';

class SwitchMood extends StatefulWidget {
  const SwitchMood({super.key});

  @override
  State<SwitchMood> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchMood> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
