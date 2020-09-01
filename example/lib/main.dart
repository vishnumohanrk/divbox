import 'package:flutter/material.dart';
import 'package:divbox/divbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example'),
          centerTitle: true,
        ),
        body: DivBox(
          m: 45.0,
          mr: 80.0,
          mx: 1.0,
          child: DivBox(
            px: 12.0,
            py: 24.0,
            pt: 75.0,
            child: Text(
              'Michael Scott',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
