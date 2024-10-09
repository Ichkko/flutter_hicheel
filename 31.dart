import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/main.dart';

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetState();
}

class _WidgetState extends State<WidgetTest> {
  List<String> texts = ["Мэдээ", "Нүүр", "Профайл"];
  int navigationBarIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTabNavigationItem(int idx) {
    setState(() {
      navigationBarIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueAccent,

          bottom: TabBar(tabs: List.generate(texts.length, (i)=>Text(texts[i])),

          ),
        ),
        body: TabBarView(
          children: List.generate(texts.length, (i)=>Text(texts[i])),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationBarIndex,
          onTap: onTabNavigationItem,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Мэдээ"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Нүүр"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профайл"),
          ],
        ),
      ),
    );
  }
}
