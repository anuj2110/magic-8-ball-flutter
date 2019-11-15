import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Center(
              child: Text("Ask Me Anything",),
            ),
          ),
          body: magicPage(),
        ),
      ),
    );
class magicPage extends StatefulWidget {
  @override
  _magicPageState createState() => _magicPageState();
}

class _magicPageState extends State<magicPage> {
  int image_name=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  image_name = Random().nextInt(5)+1;
                });
              },
              child: Image.asset("images/ball$image_name.png"),
            ),
          )
        ],
      ),
      
    );
  }
}