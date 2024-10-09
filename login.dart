import 'package:flutter/material.dart';
import 'package:mobile/dashbaord.dart';
import 'package:mobile/undsen/route.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void onLogin(BuildContext context) {

    Navigator.popAndPushNamed(context, RouteNames.dashbaord.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("loginPage"),),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
              onPressed: () => onLogin(context),
      child: Text("register page oroh"),
    ),
       Text("Daraagiin Page"),
       ],
      ),
    ),
    );
  }
}
