import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';


class BmiResultScreen extends StatelessWidget {
  final double result;

  const BmiResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "NORMAL",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        result.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 88,
                        ),
                      ),
                      Text("You Have A Normal Body Weight.\n Good Job!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: pinkColor),
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
