import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key, this.width = 320});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 255, 246, 228),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Logo(),
          SizedBox(height: 8),
           Center(
            child: Text(
              'Hitta ett recept som passar genom att ändra\ninställningarna nedanför',
              textAlign: TextAlign.center, // Centrera texten inom sin bredd
              style: TextStyle(
                fontSize: 14, // Justera storlek vid behov
                color: Color(0xFF000000), // Exempel: lättare färg
              ),
            ),
          ),
          SizedBox(height: 8),
          IngredientControl(),
          SizedBox(height: 8),

          KitchenControl(),
          SizedBox(height: 8),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Svårighetsgrad',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          DifficulyControl(),
          SizedBox(height: 8),

          PriceControl(),
          SizedBox(height: 8),

          TimeControl(),
        ],
      ),
    );
  }
}
