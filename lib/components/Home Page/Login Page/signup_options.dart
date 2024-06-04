import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'google_icon.png',
          height: 60,
          width: 60,
        ),
        const SizedBox(
          width: 50,
        ),
        const FaIcon(
          FontAwesomeIcons.facebookF,
          size: 50,
          color: Colors.blueAccent,
        ),
        const SizedBox(
          width: 50,
        ),
        const FaIcon(
          FontAwesomeIcons.apple,
          size: 60,
          color: Color.fromARGB(255, 63, 65, 68),
        ),
      ],
    );
  }
}
