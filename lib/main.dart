import 'package:flutter/material.dart';

void main() => runApp(new IconApp());

class IconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row flatButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Saya FlatButton'),
          onPressed: () => debugPrint('FlatButton di tekan'),
        )
      ],
    );

    Row raisedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('RaisedButton'),
          onPressed: () => debugPrint('RaisedButton di tekan'),
        )
      ],
    );

    Row iconButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () => debugPrint('IconButton Ditekan'),
        )
      ],
    );

    Row outlineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('OutlineButton'),
          onPressed: () => debugPrint('OutlineButton ditekan'),
        )
      ],
    );

    Row dropdownButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<String>(
          items: <String>[
            'Laki-Laki',
            'Perempuan'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) => debugPrint('Changed: ${value}'),
        ),
        Text('DropdownButton')
      ],
    );

    Row backButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        BackButton(),
        Text('Back')
      ],
    );

    Row closeButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CloseButton(),
        Text('Close'),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text("Icons")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          flatButton,
          raisedButton,
          iconButton,
          outlineButton,
          dropdownButton,
          backButton,
          closeButton
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Floating Action Button ditekan'),
      ),
    );
  }
}
