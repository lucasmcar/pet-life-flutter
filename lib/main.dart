import 'package:flutter/material.dart';
import 'package:lifepet_app/screens/home_screen.dart';
import 'package:lifepet_app/screens/form_pet_screen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Pet Life",
        home: HomeScreen(),
        theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
        debugShowCheckedModeBanner: false);
  }
}
