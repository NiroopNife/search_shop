import 'package:flutter/material.dart';
import 'package:searchshop/Utils/colors.dart';
import 'package:searchshop/Widgets/search_result_card.dart';

class SearchResultScreen extends StatefulWidget {
  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Search'),
      ),
      body: Container(
        color: Colour.nGrey.withOpacity(.3),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Showing results of '),
                  Text('Product name', style: TextStyle(color: Colour.nNavy, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 30,),
              SearchResultCard("https://lh3.googleusercontent.com/proxy/UjXYDnCDdFLNZyOS58TnQXd_1VfMu1x1N9mLp7mU3Ja7pFDA78tuXGJKftuholhDtqTnZPdR_HeYEL7uKCrvJVVD93Y8Ok4e80x00ECTwuwvDw", "Wonder photo shop", "9542 Thompson DriveOcean Springs, MS 39564"),
              SearchResultCard("https://upload.wikimedia.org/wikipedia/commons/d/d8/Charity_shop_in_West_Street_%286%29_-_geograph.org.uk_-_1504815.jpg", "Naomi House", "43 E. Tanglewood Drive Clinton, MD 20735"),
              SearchResultCard("https://images.jdmagicbox.com/comp/chennai/s6/044pxx44.xx44.130713150104.f9s6/catalogue/eagle-book-shop-nungambakkam-chennai-stationery-shops-1rcnqigd49.jpg?clr=", "Eagle Book Stationary", "2 North Birch Hill Lane Horn Lake, MS 38637"),
              SearchResultCard("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/The_Body_Shop%2C_Oxford_Street%2C_London%2C_March_2016_01.jpg/220px-The_Body_Shop%2C_Oxford_Street%2C_London%2C_March_2016_01.jpg", "The Body shop", "71 Snake Hill St. Cincinnati, OH 45211"),
              SearchResultCard("https://res.cloudinary.com/lush/image/upload/v1501839199/lush_website_uk/shops/hero/2017/08/swansea_shopfront.jpg", "Lush", "8056 Green Hill St. Hanover, PA 17331"),
              SearchResultCard("https://content.jdmagicbox.com/comp/pune/f6/020pxx20.xx20.180218094008.f8f6/catalogue/much-n-more-wakad-pune-gift-shops-rqfiufq1x8.jpg?clr=333333", "Much N More", "83 Old Homewood St. Fort Worth, TX 76110"),
            ],
          ),
        ),
      ),
    );
  }
}
