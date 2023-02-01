import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        // new is optional used to create a new object of the class
        //but dart is smart enough to do it on its own
        "/home": (context) => HomePage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}

// @override is used to override the function because
//its predefined in flutter and we are overriding it with our own function

//buildcontext tells the location of the widget in the tree and it is used to get the location of the widget
// Basically context is used to get the location of the widget in the tree of our apps widget

//Method is function inside a class while function is outside a class and @required is used to make a parameter required

