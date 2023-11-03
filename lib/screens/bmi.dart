
import 'dart:math';

import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/screens/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalcScreen extends StatefulWidget {
  const BmiCalcScreen({super.key});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

class _BmiCalcScreenState extends State<BmiCalcScreen> {
  bool male =true;
  int age = 15;
  int weight = 60;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    male = true;
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: male ? selectedColor: secondColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 60,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    male = false;
                    setState(() {

                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: male? secondColor : selectedColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 60,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                    fontSize: 20
                    ),
                  ),

                      Text(
                        "${height.toInt()}cm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                  Slider(
                    min: 0,
                    max: 250,
                    value: height,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                    activeColor: pinkColor,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight".toString(),
                          style: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              mini: true,
                                onPressed: () {
                                    if (weight == 0) {
                                     return;
                                    } else {
                                      weight--;
                                      setState(() {});
                                    }
                                  },
                                child: Icon(Icons.remove),
                              ),

                        FloatingActionButton(
                          backgroundColor: Colors.grey,
                          mini: true,
                                onPressed: () {
                                  weight++;
                                  setState(() {});
                                },
                                child: Icon(Icons.add),
                        ),

                          ],
                        )
                      ],
                    ),
                  ),
                        ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           FloatingActionButton(
                        mini: true,
                                onPressed: () {
                                  if (age == 0) {
                                    return;
                                  } else {
                                    age--;
                                  }
                                  setState(() {});
                                },
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.grey,
                              ),
                           FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                                child: Icon(Icons.add),
                                backgroundColor: Colors.grey,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                double result = weight / pow( height / 100, 2);
               Navigator.push(context,
                 MaterialPageRoute(
                     builder: (context)
                     => BmiResultScreen(result: result,))
               );
              },

              style:
              ElevatedButton.styleFrom(
                backgroundColor: pinkColor),
              child: Text("CALCULATE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              ),
            ),
        ],
      ),
    );
  }
}
