import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/pages/main_view.dart';
import 'package:lab2/ui_controller.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RecipeHandler()),
        ChangeNotifierProvider(create: (context) => UIController()),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receptsök',
      theme: ThemeData(

        colorScheme: AppTheme.colorScheme,
        textTheme: AppTheme.textTheme,
        useMaterial3: true,
        
        
      ),
      home: MainView(),
    );
  }
}
