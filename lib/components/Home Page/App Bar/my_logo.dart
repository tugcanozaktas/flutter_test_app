import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "tugca",
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 25,
              )),
            ),
            Text("news",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 25,
                  ),
                ))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        FaIcon(
          FontAwesomeIcons.rocket,
          size: 50,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
