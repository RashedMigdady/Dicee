import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int leftB = Random().nextInt(6) + 1;
  int rightB = Random().nextInt(6) + 1 ;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftB = Random().nextInt(6)+1 ;

                  });
                },
                child: Image.asset("images/dice$leftB.png"),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightB= Random().nextInt(6)+1;
                  });
                },
                child: Image.asset("images/dice$rightB.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

}



