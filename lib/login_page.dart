import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 130),
          Image.asset("assets/images/icon_image.png",
            height: 110,
          ),
          const SizedBox(height: 50),
          const Text("WELCOME TO PUSTAK GRAH",
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 35,
              color: Colors.amber,
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
                       borderSide: BorderSide(color: Colors.amber)
                     ),
                     labelStyle: TextStyle(fontSize: 20,color: Colors.amber),
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
                       borderSide: BorderSide(color: Colors.amber),
                     ),
                       labelStyle: TextStyle(fontSize: 20,color: Colors.amber),
                       hintStyle: TextStyle(fontSize: 15,color: Colors.black45),
                       hintText: "Enter Password",
                       label: Center(
                         child: Text("Password"),
                       )
                   ),
                 ),
                 const SizedBox(height: 20,),
                 ElevatedButton(
                     onPressed:() {},
                     child:Text("LogIn"),
                   style: const ButtonStyle(

                     foregroundColor: MaterialStatePropertyAll(Colors.white),//Way to design Buttons specially by using MaterialStateProperty
                     backgroundColor: MaterialStatePropertyAll(Colors.amber),
                   ),
                 ),
                 SizedBox(height: 60,),
                 Image.asset("assets/images/login_image.png",
                   height: 200,
                 ),
               ],
             )
         )

        ],
      ),
    );
  }
}
