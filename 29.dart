import 'package:flutter/material.dart';


class WidgetTest  extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() =>_WidgetState();
}
class _WidgetState extends State<WidgetTest>{
  final scrollController=ScrollController();
  int legth=30;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("weof")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("botton"),
      ),
      body: Align(
        alignment: Alignment.center,
        child:Scrollbar(
            controller: scrollController,
            child: ListView(
                controller: scrollController,

                children:List.generate(
                  legth,
                      (i)=>Container(
                    margin: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
                    color: Colors.cyan,
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text((i+1).toString(), style: TextStyle(fontSize: 24),),
                    ),),
                )
            )



        ),

      ),



    );
  }
}

