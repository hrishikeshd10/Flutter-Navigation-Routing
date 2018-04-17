import 'package:flutter/material.dart';



class page1 extends StatelessWidget {


  final String title;


  page1(this.title);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(this.title)),

      body: new Center(
       child: new Card(),
      )
    );
  }
}
