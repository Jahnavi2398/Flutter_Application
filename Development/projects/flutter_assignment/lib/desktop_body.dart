import 'package:flutter/material.dart';

// for Desktop
class DesktopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Row(
        children: [
          // First Column

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(color: Colors.green, height: 120),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          Container(
            width: 200,
            color: Colors.black,
          ),
        ],
      ),

      // secoond Column
    );
  }
}
