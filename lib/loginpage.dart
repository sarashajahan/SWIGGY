import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:swiggycloneapp/bottomnavigation.dart';
import 'package:swiggycloneapp/registration.dart';
import 'package:swiggycloneapp/secondpage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "ZWIGGY",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Color(0xfff3A3A4D),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/8.jpg"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/7.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MediaQuery(
                data: MediaQueryData(),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 48,
                        width: 356,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19.0),
                          child: TextFormField(
                            controller: usernamecontroller,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 20,
                              ),
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 48,
                        width: 356,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19.0),
                          child: TextFormField(
                            controller: passwordcontroller,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                                size: 20,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 47, top: 10),
                        child: Center(
                          child: Container(
                            height: 20,
                            width: 500,
                            child: Text(
                              "forgot your username or password?",
                              style: TextStyle(color: Color(0xfff3A3A4D)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 30,
                        width: 200,
                        color: Color(0xfff3A3A4D),
                        child: MaterialButton(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            if (usernamecontroller.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "please enter your username");
                            } else if (passwordcontroller.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "please enter a valid password");
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavigationBarExampleApp(
                                    title: "login",
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Container(
                          height: 25,
                          width: 500,
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "not a registered user,",
                                  style: TextStyle(
                                    color: Color(0xfff3A3A4D),
                                    fontSize: 15,
                                  ),
                                ),
                                MaterialButton(
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                      color: Color(0xfff3A3A4D),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationPage(
                                          title: "login",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
