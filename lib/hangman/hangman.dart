import 'package:flutter/material.dart';
import 'package:paintcanvas/hangman/hangmanpainter.dart';

class HangMan extends StatefulWidget {
  @override
  _HangManState createState() => _HangManState();
}

class _HangManState extends State<HangMan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HangMan'),
      ),
      body: Column(
        children: <Widget>[
          
          //  flex: 5,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: Text('Questions all these adf asdfasdfsdfsdf ', textAlign: TextAlign.start)),
                Expanded(
                  child: CustomPaint(
                    size: Size(200, 200),
                    painter: HangManPainter(),
                  ),
                )
              ],
            ),
          
          
           
             RaisedButton(child: Text('click'), onPressed: () {}),
        
          Text('data')
        ],
      ),
    );
  }
}
