import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qq/account.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
padding: EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(padding: EdgeInsets.only(top: 20)),

              Text("Notifications", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26
              ),),
              Text("You have 3 Notification Today", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                color: Colors.black54
              ),),
              Padding(padding: EdgeInsets.only(top: 20)),

              Text("Today", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                color: colorResource.primaryColor
              ),),


              ListView.builder(
                padding: EdgeInsets.fromLTRB(00, 20, 00, 30),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){

                    },
                    child:  Container(
                      padding: EdgeInsets.fromLTRB(00, 20, 00, 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey)
                        )
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 3.0,

                             backgroundColor: colorResource.primaryColor,
                          ),
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                            NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                            backgroundColor: Colors.transparent,
                          ),

                          Padding(padding: EdgeInsets.all(5)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Nitin ", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: colorResource.primaryColor
                                  ),),
                                  Text("participated in the contest", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black54
                                  ),),

                                ],
                              ),

                              Text("8 hour ago", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.black54
                              ),),

                            ],
                          )
                        ],
                      ),
                    )
                  );



                },),



              Text("This Week", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: colorResource.primaryColor
              ),),


              ListView.builder(
                padding: EdgeInsets.fromLTRB(00, 20, 00, 30),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: (){

                      },
                      child:  Container(
                        padding: EdgeInsets.fromLTRB(00, 20, 00, 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 1, color: Colors.grey)
                            )
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 3.0,

                              backgroundColor: colorResource.primaryColor,
                            ),

                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                              NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                              backgroundColor: Colors.transparent,
                            ),

                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Raju ", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: colorResource.primaryColor
                                    ),),
                                    Text("participated in the contest",
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black54
                                    ),),

                                  ],
                                ),

                                Text("3 day ago", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black54
                                ),),

                              ],
                            )
                          ],
                        ),
                      )
                  );



                },),
            ],
          ),
        ),
      ),

      bottomNavigationBar:  CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xf454745),
        height: 50,
        index: 3,
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
                pageBuilder: (context, animation1, animation2) => NotificationScreen(),
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
