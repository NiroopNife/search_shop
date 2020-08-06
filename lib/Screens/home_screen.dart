import 'package:flutter/material.dart';
import '../Screens/search_result_screen.dart';
import '../Utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Shop Search'),
      ),
      body: Container(
        color: Colour.nGrey.withOpacity(.3),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                 Expanded(
                   flex: 6,
                   child: TextField(
                     onSubmitted: (value){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultScreen()));
                     },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          suffixIcon:GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultScreen()));
                            },
                              child: Icon(Icons.search)),
                          hintText: 'Search by Shop Name, Item, Brand...',
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colour.nNavy, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.indigoAccent),
                          ),
                        ),
                      ),
                 ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                      child: GestureDetector(
                        onTap: (){
                        },
                          child: Image.asset('assets/images/ic_qr.png',)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
