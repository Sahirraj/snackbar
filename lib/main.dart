import 'package:flutter/material.dart';
void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),
  home: new HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("snackbar")),body: new MyBody());

  }
}
class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new RaisedButton(
            child: new Text(
              "click Me",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.grey,
            onPressed: ()=> Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("you Click Me"),
              duration: new Duration(seconds: 3),
            )),
        ),
      ),
    );
  }
}
