import 'package:flutter/material.dart';
import 'package:mobile/undsen/tile.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  void onTapTile(String title){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>TilePage(title)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homePage"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index)=>ListTile(
          subtitle: Text("$index"),
        title: Text("$index"),
        leading: Icon(Icons.adb),
        trailing: Icon(Icons.chevron_right),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        onTap: ()=> onTapTile("$index"),
        horizontalTitleGap: 0,
        style: ListTileStyle.list,
        )),
      ),
    );
  }
}
