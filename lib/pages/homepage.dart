import 'package:flutter/material.dart';
import 'package:peterfan/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 3;
    final String name = "Harsh";

    return Scaffold(
      // Scaffold is a widget appbar is head  and body is body and for footer we use bottomNavigationBar or drawer
      appBar: AppBar(
        title: Text("Family Guy Store"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  day $days of Flutter with $name "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
