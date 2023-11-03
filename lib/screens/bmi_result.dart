import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';
class BmiResultScreen extends StatefulWidget {
  final double result;

  const BmiResultScreen({super.key, required this.result});

  @override
  State<BmiResultScreen> createState() => _BmiResultScreenState();
}

class _BmiResultScreenState extends State<BmiResultScreen> {

  printData(){
    String val = '';
    if(widget.result < 16){
       val = "Extreme thinness";
    }
    else if(widget.result > 16 || widget.result < 17){
       val ="Moderate thinness";
    }
    else if(widget.result > 16 || widget.result < 17){
       val ="Light thinness";
    }else if(widget.result > 17 || widget.result < 18.5){
       val ="Normal weight";
    }else if(widget.result > 18.5 || widget.result < 25){
       val ="overweight";
    }else if(widget.result > 25 || widget.result < 30){
       val ="Class A obesity";
    }else if(widget.result > 30 || widget.result < 35){
       val ="Class B obesity";
    }else if(widget.result > 35 || widget.result < 40){
       val ="Class C obesity";
    }else{
       val = "Over obesity ";
    }
    return val;
  }

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
                        printData(),
                        style: TextStyle(
                          color: pinkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        widget.result.toStringAsFixed(2),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 88,
                        ),
                      ),
                      Text(
                        "You Have A Normal Body Weight.\n Good Job!",
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
