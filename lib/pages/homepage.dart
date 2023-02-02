import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 6;
    final String name = "Harsh";

    return Scaffold(
      // Scaffold is a widget appbar is head  and body is body and for footer we use bottomNavigationBar or drawer
      appBar: AppBar(
        title: Text("Hehehehehe"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  day $days of Flutter with $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
