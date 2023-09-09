import 'package:flutter/material.dart';
import 'dart:math';

int leftDiceNumber = 3;
int rightDiceNumber = 4;

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Dice",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children: [
                Expanded(child: Image.asset("images/${leftDiceNumber}.png")),
                Expanded(child: Image.asset("images/${rightDiceNumber}.png")),
              ],
            ),
          ),
          Text("You rolled :${leftDiceNumber + rightDiceNumber}"),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
              });
            },
            color: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                "Roll the dice",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
