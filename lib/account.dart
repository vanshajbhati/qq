import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';
import 'package:qq/notificationScreen.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(

backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: 800,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Text("       ", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),),

                    InkWell(

                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>Home()));
                        },

                        child: Container(
                            margin: EdgeInsets.all(20),child: ImageIcon( AssetImage("assets/cancel.png", ), color: Colors.black,size: 40,))),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        Text("Total Participates", style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                        ),),
                        Text("5"),
                      ],
                    ),

                    CircleAvatar(

                      radius: 64,
                      backgroundColor: colorResource.primaryColor,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("            Log Out", style: TextStyle(
                            fontSize: 15,
                          color: Colors.grey
                        ),),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(
                          children: [
                            Text("            ", style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey
                            ),),
                            ImageIcon( AssetImage("assets/logout.png"), size: 20, color: Colors.pink,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),


                Padding(
                  padding: EdgeInsets.all(10),
                ),


                Text("Shivam Yadav", style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                Text("shivamyadav213@gmail.com", style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal
                ),),

                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


                    Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),),
                      child: Container(

                        width: 50,
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            height:20,
                            child: ImageIcon( AssetImage("assets/share.png"), size: 20, color: Colors.pink,)),
                      ),
                    ),

                    Card(
                      color: colorResource.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),),

                      child: Container(

                        width: 180,
                        padding: EdgeInsets.all(13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:25,
                                child: Image.asset("assets/first-rank.png")),

                            Text(
                              'Rank',textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),),
                      elevation: 0,
                      child: Container(

                        width: 50,
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                            height:20,

                      ),
                    ),),

                  ],
                ),


                TabBar(
                  tabs: [
                    Tab(child: Text("Transactions", textAlign:TextAlign.center,style: TextStyle(
                      color: Colors.black
                    ),),),
                    Tab(child: Text("Basic Info",  textAlign:TextAlign.center,style: TextStyle(
                        color: Colors.black
                    ),),),
                    Tab(child: Text("Payment Method", textAlign:TextAlign.center, style: TextStyle(
                        color: Colors.black
                    ),),),
                    Tab(child: Text("Payment Method", textAlign:TextAlign.center, style: TextStyle(
                        color: Colors.black
                    ),),),
                  ],
                ),

                // ignore: prefer_const_constructors
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width,
                          child:  ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: (){

                                },
                                child:  Container(
                                  

                                  margin: EdgeInsets.fromLTRB(20, 00, 20, 15),
                                    padding: EdgeInsets.all(20),
                                    width: MediaQuery.of(context).size.width,
                                    height: 90,


                                    decoration: BoxDecoration(

                                        color: Colors.white,
                                      border: Border.all(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                     


                                        Row(
                                          children: [
                                            CircleAvatar(

                                              radius: 25,
                                              backgroundColor: Colors.grey[100],
                                              child: CircleAvatar(
                                                radius: 15.0,
                                                child: Image.asset("assets/valid.png",) ,
                                                backgroundColor: Colors.transparent,
                                              ),),
                                            
                                            Padding(padding: EdgeInsets.all(5)),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Payment",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,


                                                  ),
                                                ),

                                                Text(
                                                  "Payment from "+index.toString(),
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.normal,


                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "+\$200",
                                              style:   TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                color: colorResource.primaryColor2

                                              ),


                                            ),

                                            Text(
                                              "Sep 22",
                                              style:   TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey

                                              ),


                                            ),
                                          ],
                                        ),



                                      ],
                                    )




                                ),
                              );



                            },),
                      decoration: BoxDecoration(
                        color: Colors.grey[100]
                      ),),
                      Icon(Icons.directions_transit, size: 350),
                      Icon(Icons.directions_car, size: 350),
                      Icon(Icons.directions_car, size: 350),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),


        bottomNavigationBar:  CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: colorResource.primaryColor,
          index: 4,
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



      ),
    );
  }
}
