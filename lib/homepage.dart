import 'package:flutter/material.dart';
import 'bmicalculator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _agecalculator = TextEditingController();
  TextEditingController _heightcalculator = TextEditingController();
  TextEditingController _weightcalculator = TextEditingController();

  BmiCalculator bmiCalculator = BmiCalculator();

  String bmiresult = "";
  String getresult = "";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Own"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/bmilogo.png',
              height: 133.0,
              width: 100.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _agecalculator,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Age",
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _heightcalculator,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Height in m",
                      icon: Icon(Icons.insert_chart),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _weightcalculator,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Weight in Kg",
                      icon: Icon(Icons.line_weight),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    splashColor: Colors.pink[600],
                    onTap: () {
                      setState(() {
                        BmiCalculator(
                          height: _heightcalculator.text,
                          weight: _weightcalculator.text,
                        );
                        bmiresult = bmiCalculator.calculateBmi();
                        getresult = bmiCalculator.getResult();
                      });
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Calculate",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("BMI : $bmiresult"),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("$getresult"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
