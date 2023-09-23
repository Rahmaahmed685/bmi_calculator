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
                      //  "Normal Weight",
                       "overweight ",
                        style: TextStyle(
                          color: pinkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 88,
                        ),
                      ),
                      Text(
                       "You need to lose 5.2 kg in order to reach normal weight (74.8)",
                     //   "You Have A Normal Body Weight.\n Good Job!",
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
  void printData(){
    if(result < 16){
      var val = "Extreme thinness";
    }
    else if(result > 16 || result < 17){
      var val ="Moderate thinness";
    }
  else if(result > 16 || result < 17){
  var val ="Light thinness";
  }else if(result > 17 || result < 18.5){
  var val ="Normal weight";
  }else if(result > 18.5 || result < 25){
  var val ="overweight";
  }else if(result > 25 || result < 30){
  var val ="Class A obesity";
  }else if(result > 30 || result < 35){
  var val ="Class B obesity";
  }else if(result > 35 || result < 40){
  var val ="Class C obesity";
  }else{
    var val = "Over obesity ";
  }
  }
}
