import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/recipe_area.dart';
import 'package:lab2/widgets/time_control.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context),
      RecipeArea(),
      ]),
    );
  }

  Widget _controlPanel(BuildContext context, {double width = 320}) {
  return Container(
    width: width,
    color: const Color.fromARGB(255, 193, 210, 218),
    child: Column(
  children: <Widget>[
    Text("Receptsök"),
    Align(
      alignment: Alignment.centerLeft,
          child: Container(
            color: Colors.transparent,
            child: Text(
              "Hitta ett recept som passar genom att ändra på inställningarna nedan.",
            ),
          ),
        ),
    Align(
      alignment: Alignment.centerLeft,
      child: Row(children: [Text("Ingrediens:"), IngredientControl()]
      )
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Row(children: [Text("Kök:"), KitchenControl()]
      )
    ),
    Text("Svårighetsgrad"),
    Align(alignment: Alignment.centerLeft,
    child: DifficulyControl()
    ),

    Text("Maxpris"),
    Align(
      alignment: Alignment.center,
      child: PriceControl()
    ),
    Text("\n Maxtid"),
    Align(
      alignment: Alignment.center,
      child: TimeControl()
    ),

      ],
    )
  );
  }

//   Widget _recipeArea(context) {
//   return Expanded(
//     child: Container(
//       //color: const Color.fromARGB(255, 204, 216, 176),
//       child: RecipeList(),
//     ),
//  );
// }


// Widget _recipeArea(context) {
//   var showList = false;
//   var contents = showList ? RecipeList() : RecipeDetail();

//   return Expanded(child: contents);
// }



}
