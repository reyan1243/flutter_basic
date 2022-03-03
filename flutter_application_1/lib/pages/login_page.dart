import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
              // height: 800,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 22,
                horizontal: 42,
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "username canot be empty";
                        }
                        return null;
                      },
                      onChanged: (str) {
                        name = str;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "password canot be empty";
                        } else if (value!.length < 6) {
                          return "enter atleast 6 digits password";
                        } else if (value != "khan1243") {
                          return "Password is wrong";
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        splashColor: Color.fromARGB(110, 69, 83, 211),
                        onTap: () => movetohome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 750),
                          height: changeButton ? 50 : 40,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
