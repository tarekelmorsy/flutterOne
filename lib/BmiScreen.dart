import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bmi calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm,
                          size: 80,
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "MALL",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[350]),
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm,
                          size: 80,
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "MALL",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 ),
                child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[350]),

                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HGIGHT",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 10 ,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [ Text(
                        "190",
                        style: TextStyle(fontSize: 50  ,fontWeight: FontWeight.w900),
                      ), Text(
                        "CM",
                        style: TextStyle(fontSize: 15),
                      )],),
                      Slider(value: 100
                          ,max: 300,min: 50, onChanged: (value){})

                    ],

          ),
                ),
              )),
          Expanded(
              child: Container(
            color: Colors.teal,
          )),
          MaterialButton(
            onPressed: () {},
            child: Text("CALCULAT"),
          )
        ],
      ),
    );
  }
}
