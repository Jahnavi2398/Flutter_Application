import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: rowChips(),
            controller: ScrollController(),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(6.0, 80.0, 6.0, 0.0),
              width: 800,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  width: 2.0,
                  //color: Colors.blue
                ),
              ),
              child: const Center(
                child: Text(
                  "Drag Components here!!",
                  style: TextStyle(fontSize: 24.0),
                ),
              ))
        ],
      ),
    );
  }

  rowChips() {
    return Row(
      children: <Widget>[
        chipForRow('Button', Colors.blue),
        chipForRow('Slider', Colors.blue),
        chipForRow('Text', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Slider', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Text', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Slider', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Button', Colors.blue),
        chipForRow('Text', Colors.blue),
        chipForRow('Button', Colors.blue),
      ],
    );
  }

  Widget chipForRow(String label, Color color) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.fromLTRB(6.0, 5.0, 6.0, 5.0),
      child: Chip(
        labelPadding: EdgeInsets.all(10.0),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: color,
        elevation: 8.0,
        shadowColor: Colors.grey[60],
        padding: const EdgeInsets.all(8.0),
      ),
    );
  }
}
