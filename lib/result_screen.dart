import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: Image.asset(
                    "assets/images/heart2.png",
                    fit: BoxFit.contain,
                  )
                // : Image.asset(
                //     "assets/images/heart2.png",
                //     fit: BoxFit.contain,
                //   ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your BMI is ${bmiModel.bmi.round()}",
            style: TextStyle(
                color: Colors.red[700],
                fontSize: 34,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "${bmiModel.comments}",
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 26,
          ),
          bmiModel.isNormal
              ? Text(
                  "Hurray! Your BMI is Normal.",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Sadly! Your BMI is not Normal.",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("CALCULATE AGAIN", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
