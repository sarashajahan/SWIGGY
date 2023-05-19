import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggycloneapp/bloc/signupbloc.dart';
import 'package:swiggycloneapp/loginpage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key, required String title}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController restaurantnamecontroller = TextEditingController();
  final TextEditingController statecontroller = TextEditingController();
  final TextEditingController districtcontroller = TextEditingController();
  final TextEditingController ownernamecontroller = TextEditingController();
  bool? check2 = true;
  late String _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupBloc>(
      create: (context) => SignupBloc(), // Create an instance of SignupBloc
      child: Scaffold(
        appBar: AppBar(title: const Text("Registration", style: TextStyle(fontSize: 30))),
        body: SingleChildScrollView(
          child: Container(
            height: 900,
            color: Colors.grey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: const Text("Partner with us", style: TextStyle(color: Colors.black, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            width: 700,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: restaurantnamecontroller,
                                  decoration: const InputDecoration(
                                    hintText: "Restaurant name*",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                                TextFormField(
                                  controller: statecontroller,
                                  decoration: const InputDecoration(
                                    hintText: "State*",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                                DropdownButton(
                                  hint: const Text("District"),
                                  value: _selectedValue,
                                  items: const [
                                    DropdownMenuItem(
                                      value: "Kottayam",
                                      child: Text("Kottayam"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Mars",
                                      child: Text("Mars"),
                                    ),
                                    DropdownMenuItem(
                                      value: "America",
                                      child: Text("America"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Uganda",
                                      child: Text("Uganda"),
                                    ),
                                    DropdownMenuItem(
                                      value: "",
                                      child: Text(""),
                                    ),
                                  ],
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedValue = newValue.toString();
                                    });
                                  },
                                ),
                                TextFormField(
                                  controller: ownernamecontroller,
                                  decoration: const InputDecoration(
                                    hintText: "Ownername*",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            color: Colors.white,
                            width: 700,
                            child: CheckboxListTile(
                              value: check2,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value) {
                                setState(() {
                                  check2 = value;
                                });
                              },
                              title: const Text("24 hrs available"),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 30,
                            width: 200,
                            color: const Color.fromARGB(255, 255, 85, 0),
                            child: MaterialButton(
                              onPressed: () {
                                if (restaurantnamecontroller.text.isEmpty) {
                                  Fluttertoast.showToast(msg: "Please enter the restaurant name");
                                } else if (statecontroller.text.isEmpty) {
                                  Fluttertoast.showToast(msg: "Please enter the state");
                                } else if (districtcontroller.text.isEmpty) {
                                  Fluttertoast.showToast(msg: "Please choose the district");
                                } else {
                                  Fluttertoast.showToast(msg: "Added successfully");
                                  BlocProvider.of<SignupBloc>(context).add(
                                    VerifyDistrict(district: districtcontroller.text.toString()),
                                  );
                                }
                              },
                              child: BlocConsumer<SignupBloc, SignupStates>(
                                builder: (context, state) {
                                  if (state is Fetching) {
                                    return const CircularProgressIndicator();
                                  }
                                  return const Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  );
                                },
                                listener: (context, state) {
                                  if (state is SignupSuccess) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => const LoginPage(title: '')),
                                    );
                                  } else {
                                    Fluttertoast.showToast(msg: "Invalid Username");
                                    print("error");
                                  }
                                },
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
        ),
      ),
    );
  }
}
