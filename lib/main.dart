import 'package:calculator_youtube/constants.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      appBar: AppBar(
        title: Text("BMI calculator"),
        backgroundColor: kBG,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardWidget(
                    child: Column(
                      children: [Icon(Icons.ac_unit), Text("Man")],
                    ),
                  ),
                ),
                Expanded(child: ReusableCardWidget()),
              ],
            ),
          ),
          Expanded(child: ReusableCardWidget()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCardWidget()),
                Expanded(child: ReusableCardWidget()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCardWidget extends StatelessWidget {
  //final Color сolor;
  // final Widget child;
  //final Function onTap;

  ReusableCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,

      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kInActiveCardColor,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
