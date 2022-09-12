import 'dart:async';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context,'home');
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(height: 350,width: 350,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),child: Image.asset("assets/image/ipone.jpg")),
                   SizedBox(height: 30,),
                  Text("Ipone 13 pro Max",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),

                ]
              ),
            ],
          ),
        ),
      ),
    );

  }
}