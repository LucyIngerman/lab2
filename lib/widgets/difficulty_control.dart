import 'package:flutter/material.dart';
import 'package:lab2/util/difficulty.dart';

class DifficulyControl extends StatefulWidget {
   const DifficulyControl({super.key});

   @override
   State<DifficulyControl> createState() => _DifficulyControlState();
}

class _DifficulyControlState extends State<DifficulyControl> {
 String _difficulty = Difficulty.labels[0];
 @override

Widget build(BuildContext context) {
  return Column(
    children: [
      for (final label in Difficulty.labels)
        RadioListTile<String>(
          dense: true,
          title: Text(label),
          value: label,
          groupValue: _difficulty,
          onChanged: (value) {
            setState(() {
              _difficulty = value!;
              });
            },
         ),  // RadioListTile
      ],
  );
}
 
}

