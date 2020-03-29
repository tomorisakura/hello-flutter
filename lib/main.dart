import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _value = "Hello World";
  String _password = "Type Your Password";
  int _intValue = 0;
  bool _cek1 = false;
  bool _cek2 = false;

  void _cek1State(bool value) {
    setState(() {
      _cek1 = value;
    });
  }

  void _cek2State(bool value) {
    setState(() {
      _cek2 = value;
    });
  }

  void _add() {
    setState(() {
      _intValue++;
    });
  }

  void _substract() {
    setState(() {
      _intValue--;
    });
  }

  void _onClickPassword(String value) {
    setState(() {
      _password = "Password : ${value}";
    });
  }

  void _onChange(String val) {
    setState(() => _value = "Change : ${val}");
  }

  void _onSubmit(String val) {
    setState(() {
      _value = "Submit : ${val}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter First"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(50.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new Text(_password),
              new TextField(
                decoration: new InputDecoration(
                  labelText: "Hello",
                  hintText: "hint",
                  icon: new Icon(Icons.account_circle)
                ),
                autofocus: true,
                autocorrect: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
              new TextField(
                decoration: new InputDecoration(
                  labelText: "Password",
                  hintText: "Your Password",
                  icon: new Icon(Icons.vpn_key)
                ),
                autocorrect: true,
                autofocus: true,
                onChanged: _onClickPassword,
              ),
              new Checkbox(value: _cek1, onChanged: _cek1State),
              new CheckboxListTile(value: _cek2, onChanged: _cek2State)
            ],
          ),
        ),
      ),
    );
  }
}