import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:searchshop/Screens/home_screen.dart';
import 'package:searchshop/Utils/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  TextEditingController phoneController = TextEditingController();
  TextEditingController smsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        color: Colour.nGrey.withOpacity(.3),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Welcome to', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black45),),
                              Text('Shop Search', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colour.nNavy),),
                            ],
                          ),
                          Expanded(
                            child: Image.asset('assets/images/ic_logo.png', width: 100, height: 100,),
                          ),
                        ],
                      ),
                        SizedBox(height: 30,),
                        Text('Please provide your phone number and complete the Login process', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black45),)
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[

                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colour.nAlmond
                              ),
                              child: Text('+91', style: TextStyle(fontSize: 18),),
                            ),
                            Expanded(child: buildTextFieldPhoneNumber(),),
                            buildButtonSendSms(),
                          ],
                        ),
                        buildTextFieldSmsVerification(),
                        buildButtonVerify()
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTextFieldPhoneNumber() {
    return Container(
        height: 50,
        margin: EdgeInsets.only(left: 8),
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
            color: Colour.nAlmond, borderRadius: BorderRadius.circular(16)),
        child: TextField(
          textAlign: TextAlign.center, style: TextStyle(fontSize: 18),
          maxLength: 10,
          autofocus: true,
          controller: phoneController,
          decoration: InputDecoration(
              hintText: 'xx-xxxx-xxxx',
              border: InputBorder.none,
              counter: SizedBox.shrink()
          ),
          keyboardType: TextInputType.phone,
        ));
  }

  Widget buildButtonSendSms() {
    return InkWell(
      child: Container(
          height: 50,
          child: Text("Send",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colour.nGrey),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(left: 8)),
    );
  }

  Container buildTextFieldSmsVerification() {
    return Container(
      child: PinPut(
        fieldsCount: 4,
        actionButtonsEnabled: false,
      ),
    );
  }

  Widget buildButtonVerify() {
    return InkWell(
      child: Container(
          constraints: BoxConstraints.expand(height: 50),
          child: Text("Log in",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.indigo.withOpacity(0.5)),
          margin: EdgeInsets.only(top: 16),
          padding: EdgeInsets.all(12)),
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
    );
  }


}
