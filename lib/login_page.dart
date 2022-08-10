import 'package:firstflutter_app/utils/routes.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 130),
            Image.asset("assets/images/logo.png",
              height: 110,
            ),
            const SizedBox(height: 50),
             Text("WELCOME $name TO PUSTAK GRAH",
              style: const TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25,
                color: Colors.deepOrange,
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
               padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 32.0),
              child: Column(
                 children: [
                   TextFormField(
                     textAlign: TextAlign.center,
                     decoration:
                     const InputDecoration(
                       focusedBorder: UnderlineInputBorder( //For UnderLine Border
                         borderSide: BorderSide(color: Colors.deepOrange)
                       ),
                       labelStyle: TextStyle(fontSize: 20,color: Colors.deepOrange),
                       hintStyle: TextStyle(fontSize: 15,color: Colors.black45),
                         hintText: "Enter UserName",
                        label: Center(
                          child: Text("UserName"),
                        )
                     ),
                     onChanged: (value)
                     {
                       name = value;
                       setState(() {

                       });
                     },

                   ) ,
                   const SizedBox(height: 20.0,),
                   TextFormField(
                     textAlign: TextAlign.center,
                     obscureText: true,
                     decoration: const InputDecoration(
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.deepOrange),
                       ),
                         labelStyle: TextStyle(fontSize: 20,color: Colors.deepOrange),
                         hintStyle: TextStyle(fontSize: 15,color: Colors.black45),
                         hintText: "Enter Password",
                         label: Center(
                           child: Text("Password"),
                         )
                     ),
                   ),
                   const SizedBox(height: 40,),
                   InkWell(
                     onTap: ()async
                     {
                        setState(() {
                          changeButton = true;
                        });
                        //Using async and await we can hold a screen to switch to the new screen
                       await Future.delayed(const Duration(seconds: 2)); // Delaye by 1 second to change activity
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                     },
                     child: AnimatedContainer(
                       duration: const Duration(seconds: 2),
                       width: changeButton?40 : 150,
                       height: 40,
                       alignment: Alignment.center,
                       decoration:  BoxDecoration(
                         color: Colors.deepOrange,
                        // shape: changeButton
                        //  ?BoxShape.circle
                        //  :BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeButton?50: 8),
                       ),
                       child: changeButton?const Icon(Icons.done,color: Colors.white,): const Text("LogIn",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                         ),
                       ),
                     ),
                   ),
                   // ElevatedButton(
                   //     onPressed:() {
                   //      Navigator.pushNamed(context, MyRoutes.homeRoute);
                   //     },
                   //   style:
                   //   TextButton.styleFrom(minimumSize: const Size(150, 35)),
                   //     child:const Text("LogIn",),
                   //
                   // ),
                   const SizedBox(height: 60,),
                   Image.asset("assets/images/login_image.png",
                     height: 150,
                   ),
                 ],
               )
           )

          ],
        ),
      ),
    );
  }
}
