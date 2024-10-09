import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  void onPressed() {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Ene bol snack"),
        action: SnackBarAction(
          label: "close",
          onPressed: () => ScaffoldMessenger.of(context).clearSnackBars,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homePAge")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.facebook,
              color: Colors.blueGrey,size: 20,)
            ),
            Text("homePage")
          ],
        ),
      ),
    );
  }
}
