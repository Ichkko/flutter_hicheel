import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile/hozor.dart';

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetState();
}

class _WidgetState extends State<WidgetTest> {
  final List<String> _cardList = ["A", "10", "j", "k"];
  Timer? _timerController;
  List<String> _showCardList = [];
  int _timer = 1000;

  @override
  void initState() {
    super.initState();
    _cardList.shuffle();
    _timerController = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (_timer > 0)
        setState(() {
          _timer = _timer - 1;
        });
    });
  }

  void onClickCard(String title) {
    if (title == "A") {
      _timerController?.cancel();
    }
    setState(() {
      _showCardList.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("botton"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: heigth * _timer / 1000,
              color: Colors.blueGrey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Хугацаа : $_timer", style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCard(
                    _cardList[0],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[0]),
                  ),
                  SizedBox(width: 50),
                  MyCard(
                    _cardList[1],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[1]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCard(
                    _cardList[2],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[2]),
                  ),
                  SizedBox(width: 50),
                  MyCard(
                    _cardList[3],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[3]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
