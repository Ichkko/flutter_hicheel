import 'package:flutter/material.dart';
import 'package:mobile/undsen/login.dart';
import 'package:mobile/undsen/route.dart';

class Home extends StatelessWidget {
  const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.login.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => onLogin(context),
              child: Text("login page oroh"),
            ),
            Text("HomePage"),
          ],
        ),
      ),
    );

  }
}
