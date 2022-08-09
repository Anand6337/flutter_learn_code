import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Anand's";
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Pustak Grah"),
      ),
    body: Center(
        child: Container(
          child: const Text('WelCome to $name Flutter UI Works in $days days'),
    ),
    ),
      drawer: const Drawer(
        backgroundColor: Colors.deepOrange,
      ),

    );
  }
}
