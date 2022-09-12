import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:new_1/homescreen.dart';
import 'package:new_1/sppleceScreen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>MyHomePage(),
        'home':(context)=>Home_Screen(),
      },
    )
  );
}