import 'dart:math';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 68,
          ),
        ),
        const SizedBox(width: 8), 
        Stack(
          children: [
            const Text(
              'RECEPT',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Monoton',
                color: Color(0xFFFFAC33),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Transform.rotate(
                angle: -20 * pi / 180, 
                child: const Text(
                  'Sök',
                  style: TextStyle(
                    fontSize: 64,
                    fontFamily: 'Pacifico',
                    color: Color(0xFFFFAC33),
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
