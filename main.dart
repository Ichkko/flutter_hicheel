import 'package:flutter/material.dart';
import 'package:mobile/dashbaord.dart';
// import 'package:mobile/undsen/home.dart';
//import 'package:mobile/undsen/route.dart';
// import 'package:mobile/undsen/34.dart';
import 'package:mobile/undsen/36.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:Home()
        // routes:routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('my  App'),
            centerTitle: true,
            elevation: 10,
            backgroundColor: Colors.blue[200],
            actions:[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: Icon(Icons.people),
                  onPressed: (){},
                ),
    ),
            ],
            leading: Icon(Icons.search),
        ),

      body:Card(
          child: Column(
            children: [
              Text("Ene",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                ),
              ),
              const Image(
             image: AssetImage("img/1.jpg"),
             width: 500.0,
             height: 300.0,
            fit: BoxFit.contain),
            ],
          ),
    ),
    );
  }
}
