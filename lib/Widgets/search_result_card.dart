import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchshop/Utils/colors.dart';

class SearchResultCard extends StatefulWidget {

  String imageSrc, title, address;
  SearchResultCard(this.imageSrc, this.title, this.address);

  @override
  _SearchResultCardState createState() => _SearchResultCardState(imageSrc, title, address);
}

class _SearchResultCardState extends State<SearchResultCard> {

  String imageSrc, title, address;
  _SearchResultCardState(this.imageSrc, this.title, this.address);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
                child: Image.network(imageSrc,)),
            Expanded(
              flex: 8,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: TextStyle(fontWeight: FontWeight.w800),),
                      SizedBox(height: 5,),
                      Text(address),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
                child: Icon(Icons.phone, color: Colour.nNavy,))
          ],
        ),
      ),
    );
  }
}
