import 'package:flutter/material.dart';

class TilePage extends StatelessWidget {
  final String title;

  const TilePage( this.title ,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
