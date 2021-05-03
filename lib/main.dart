import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardContainer(),
                  CardContainer(),
                  CardContainer(),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColoredContainer(
                  cor: Colors.green,
                ),
                ColoredContainer(
                  cor: Colors.yellow,
                ),
                ColoredContainer(
                  cor: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
              margin: EdgeInsets.only(top: 40),
              color: Colors.white,
              height: 120,
            );
  }

}



class ColoredContainer extends StatelessWidget {
  final Color cor;

  ColoredContainer({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              width: 50,
              color: cor,      
            );
  }
}