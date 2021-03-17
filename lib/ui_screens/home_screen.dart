import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Material(
    //   // color: Colors.redAccent,
    //   child: Center(
    //     child: Text(
    //       generateNumber(),
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
    //     ),
    //   ),
    // );
    return Material(
      color: Color(0xE0F1A2D8),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(50.0),
                    child: MaterialButton(
                      child: Text(
                        'hello',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20.0, color: Colors.red),
                      ),
                      height: 90.0,
                      color: Colors.yellow,
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(50.0),
                      child: MaterialButton(
                        child: Text(
                          'hello',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        height: 90.0,
                        color: Colors.yellow,
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(50.0),
                    child: MaterialButton(
                      child: Text(
                        'hello',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20.0, color: Colors.red),
                      ),
                      height: 90.0,
                      color: Colors.yellow,
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(50.0),
                      child: MaterialButton(
                        child: Text(
                          'hello',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        height: 90.0,
                        color: Colors.yellow,
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(50.0),
                    child: MaterialButton(
                      child: Text(
                        'hello',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20.0, color: Colors.red),
                      ),
                      height: 90.0,
                      color: Colors.yellow,
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(50.0),
                      child: MaterialButton(
                        child: Text(
                          'hello',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        height: 90.0,
                        color: Colors.yellow,
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  String generateNumber() {
    var random = Random();
    var unluckyDate = random.nextInt(30);
    return "your unlucky date is: $unluckyDate";
  }
}
