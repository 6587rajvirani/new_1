
import 'package:google_mobile_ads/google_mobile_ads.dart';

BannerAd? bannerAd;

void bannerAds(){
   bannerAd = BannerAd(
    size:AdSize.banner,
    adUnitId: "ca-app-pub-3940256099942544/6300978111",
    listener: BannerAdListener(),
    request: AdRequest(),
  );
  bannerAd!.load();

}