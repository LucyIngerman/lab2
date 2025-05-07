import 'dart:math';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../constants/assets.dart'; // se till att denna pekar rätt till din logobild


class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(

          padding: const EdgeInsets.only(top: 8.0, right: 4),
          child: Image.asset(
            Assets.logo, // tex: 'assets/images/logo.png'
            height: 68,
          ),
        ),
        Stack(
          children: [
            Text(
              'RECEPT',
              style: GoogleFonts.monoton(
                textStyle: const TextStyle(
                  fontSize: 48,
                  color: Color.fromARGB(255, 3, 28, 58),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 20), // Justera för bättre placering
              child: Transform.rotate(
                angle: -20 * pi / 180,
                child: Text(
                  'Sök',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      fontSize: 64,
                      color: Color(0xFFFFAC33),
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
