
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qq/account.dart';
import 'package:qq/colors.dart';
import 'package:qq/customerSupport.dart';
import 'package:qq/home.dart';
import 'package:qq/notificationScreen.dart';

class TermsCondition extends StatefulWidget {
  const TermsCondition({Key? key}) : super(key: key);

  @override
  _TermsConditionState createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: Icon(Icons.arrow_back, color: Colors.black,size: 30,),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(

        margin: EdgeInsets.fromLTRB(20, 00, 00, 00),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [



            Row(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                SizedBox(   height: 60,
                    width: 60,
                    child: Image.asset('assets/termsAndConditionColorful.png')),

                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Terms & Conditions", textAlign: TextAlign.start,  style: TextStyle(
                    color: Colors.pink, fontSize: 22, fontWeight: FontWeight.bold,
                  ),),
                )


              ],
            ),

            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text("Terms & Conditions", textAlign: TextAlign.left,  style: TextStyle(
              color: Colors.pink, fontSize: 18, fontWeight: FontWeight.bold,
            ),),

            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text("Provide accurate information to Amazon and our customers at all "
                "times Act fairly and not misuse Amazon’s features or services Not attempt to damage or abuse another Seller, their listings or ratings"
                " Not attempt to influence customers’ ratings, feedback, and reviews"
                "  Not send unsolicited or inappropriate communications"
                "Not contact customers except through Buyer-Seller Messaging"
                "  Not attempt to circumvent the Amazon sales process"
                "Not operate more than one selling account on Amazon without a legitimate business need"
                "Not engage in conduct that violates price fixing laws", textAlign: TextAlign.left,  style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.normal
            ),),
          ],
        ),
      ),

      bottomNavigationBar:  CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xf454745),
        height: 50,
        index: 2,
        items: <Widget>[
          ImageIcon( AssetImage("assets/home (2).png", ), color: Colors.black, size: 20,),
          ImageIcon( AssetImage("assets/search-interface-symbol.png", ), color: Colors.black,size: 20,),
          ImageIcon( AssetImage("assets/heart.png", ), color: Colors.black,size: 20,),
          ImageIcon( AssetImage("assets/notification.png", ), color: Colors.black,size: 20,),
          ImageIcon( AssetImage("assets/userHome.png", ), color: Colors.black,size: 20,),

        ],
        onTap: (index) async {
          if(index==4){
            await Future.delayed(Duration(seconds: 1));

            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Account(),
                transitionDuration: Duration.zero,
              ),
            );
          }

          if(index==3){
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => NotificationScreen(
                ),
                transitionDuration: Duration.zero,
              ),
            );
          }
          if(index==2){
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => TermsCondition(),
                transitionDuration: Duration.zero,
              ),
            );
          }
          if(index==1){
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => CustomerSupport(),
                transitionDuration: Duration.zero,
              ),
            );
          }
          if(index==0){
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Home(),
                transitionDuration: Duration.zero,
              ),
            );
          }
        },
      ),

    );
  }
}
