import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/peterbhau.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                      // style is used to change the style of button
                      backgroundColor: Color.fromARGB(255, 13, 27, 213),
                    ),
                    onPressed: () {
                      print("Hi Guys this is Family guy fan page");
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}


// What is purpose of child: Child is used to add a  single child widget to the parent widget
// What is childre: Children is used to add multiple child widgets to the parent widget
