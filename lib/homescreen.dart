import 'package:Ads/until/ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    super.initState();
    openAds();
    bannerAds();
    interAds();
    rewardAds();
    interVideoAds();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Ads Demo"),
          ),

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(height: 200,),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  if(appOpenAd!=null)
                  {
                    appOpenAd!.show();
                  }
                },
                    child: Text("open Ads")),
                SizedBox(height: 200,),

                ElevatedButton(onPressed: (){
                  if(interstitialAd != null)
                  {
                    interstitialAd!.show();
                    interAds();
                  }
                }, child: Text("InterAds")),
                SizedBox(height: 200,),
                ElevatedButton(onPressed: (){
                  if(interstitialVideoAd != null)
                  {
                    interstitialVideoAd!.show();
                    interVideoAds();
                  }
                }, child: Text("InterVideoAds")),
                SizedBox(height: 200,),


                ElevatedButton(onPressed: (){
                  if(rewardedAd != null)
                  {
                    rewardedAd!.show(onUserEarnedReward: (ad, reward) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("${reward.amount}")));
                    });

                    rewardAds();
                  }
                }, child: Text("rewardAds")),
                SizedBox(height: 200,),

              ],
            ),
          ),
          Container(height: 40,
            width: 350,
            margin: EdgeInsets.only(bottom:50,left: 20),
            child: AdWidget(
              ad: bannerAd!,
            ),
          ),
        ],
      ),
    ));
  }
}
