import 'package:flutter/material.dart';

class dashbaord extends StatelessWidget {
  const dashbaord({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my  App'),
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

        ),

        body: Container(
      width: 400.0,
      height: 500.0,
      padding: EdgeInsets.all(100.0),
      margin: EdgeInsets.all(50.0),
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        // borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 6.0),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage("img/1.jpg")),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 30,
            spreadRadius: 5,
            offset: Offset(4, 4),
          )
        ],
      ),
      child: Text(
        "my first app",
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 20.0,
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    ));
  }
}
