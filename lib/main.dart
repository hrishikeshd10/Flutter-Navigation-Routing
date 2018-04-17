import 'package:flutter/material.dart';
import 'package:flutter_navigation/page1.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.green
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,

      routes: <String,WidgetBuilder>{
        "/a" : (BuildContext context) => new page1("Page 1"),

      }
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
    return new Scaffold(

     appBar: new AppBar(
       title: new Text('S2P Edutech')
     ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text('Hrishikesh Deshmukh'),
                accountEmail: new Text('hrishikesh.deshmukh445@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.green,
                  child: new Text('H'),

                ),

            ),

            new ListTile(

              title: new Text('Page 1'),
              trailing: new Icon(Icons.fastfood),
              // ignore: argument_type_not_assignable
              onTap:(){
                    () =>Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/a");
              }

            ),

            new ListTile(title: new Text('Page 2'),
              trailing: new Icon(Icons.local_airport)
            ),


            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: () =>Navigator.of(context).pop()   ,
            )




          ]
        ),
      ),

      body: new Container(
        child: new Center(
          child: new Text('HomePage')
        ),
      ),


    );
  }
}
