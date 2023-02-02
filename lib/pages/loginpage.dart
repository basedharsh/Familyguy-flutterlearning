import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          //SingleChildScrollView is used to scroll the page to avoid overflow error
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset(
                "assets/images/peterbhau.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Mr Peter welcomes $name",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
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
                        onChanged: (value) {
                          name = value;
                          setState(
                              () {}); //setState is used beause we are changing the state of the widget so we need to call setState to change the state
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, "/home");
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 39, 125, 42),
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 20),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //     // style is used to change the style of button
                    //     backgroundColor: Color.fromARGB(255, 44, 110, 38),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, "/home");
                    //   },
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}


// What is purpose of child: Child is used to add a  single child widget to the parent widget
// What is childre: Children is used to add multiple child widgets to the parent widget

//Day 7 nothing new done
