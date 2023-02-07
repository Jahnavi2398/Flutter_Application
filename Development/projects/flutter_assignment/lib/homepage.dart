import 'package:flutter/material.dart';
import 'package:flutter_assignment/desktop_body.dart';
import 'package:flutter_assignment/mobile_body.dart';
import 'package:flutter_assignment/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: columnWidget(),
              controller: ScrollController(),
            )
          ],
        ),
      ),
    );
  }

  columnWidget() {
    return Column(
      children: <Widget>[
        chipForColumn('Button', Colors.blue),
        chipForColumn('Slider', Colors.blue),
        chipForColumn('Text', Colors.blue),
        chipForColumn('Slider', Colors.blue),
        chipForColumn('Button', Colors.blue),
        chipForColumn('Button', Colors.blue),
        chipForColumn('Text', Colors.blue),
        chipForColumn('Button', Colors.blue),
        chipForColumn('Slider', Colors.blue),
        chipForColumn('Button', Colors.blue),
        chipForColumn('Button', Colors.blue),
      ],
    );
  }

  Widget chipForColumn(String label, Color color) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.all(3.0),
      child: Chip(
        labelPadding: EdgeInsets.all(6.0),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: color,
        elevation: 8.0,
        shadowColor: Colors.grey[60],
        padding: const EdgeInsets.all(6.0),
      ),
    );
  }
}
