import 'package:firstflutter_app/utils/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {

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
            const Text("WELCOME TO PUSTAK GRAH",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 35,
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
                   ElevatedButton(
                       onPressed:() {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                       },
                     style:
                     TextButton.styleFrom(minimumSize: const Size(150, 35)),
                       child:const Text("LogIn",),

                   ),
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
