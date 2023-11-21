import 'package:flutter/material.dart';
import 'package:grocery_items/intro_page.dart';
import 'package:grocery_items/model/grocery_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GroceryModel(),
      child: MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
