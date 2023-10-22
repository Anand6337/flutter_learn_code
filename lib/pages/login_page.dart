import 'package:firstflutter_app/utils/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 130),
              Image.asset(
                "assets/images/logo1.png",
                height: 110,
              ),
              const SizedBox(height: 50),
              Text(
                "WELCOME $name TO ESPPR",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromRGBO(255, 106, 24, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  onPressed: null,
                  icon: Image.asset(
                    'assets/images/ggle.png',
                    height: 32,
                    width: 32,
                  ),
                  label: const Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        //UserName TextField
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                //For UnderLine Border
                                borderSide:
                                    BorderSide(color: Colors.deepOrange)),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Colors.deepOrange),
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black45),
                            hintText: "Enter UserName",
                            label: Center(
                              child: Text("UserName"),
                            )),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username field cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        //Text Field for Password
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepOrange),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Colors.deepOrange),
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black45),
                            hintText: "Enter Password",
                            label: Center(
                              child: Text("Password"),
                            )),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password field cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be more than 6 characters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () => movetoHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 40 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            // shape: changeButton
                            //  ?BoxShape.circle
                            //  :BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "LogIn",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        "assets/images/login_image.png",
                        height: 150,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
