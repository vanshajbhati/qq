


import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beautiful_popup/main.dart';
import 'package:qq/account.dart';
import 'package:qq/buyTocken.dart';
import 'package:qq/colors.dart';
import 'package:qq/customerSupport.dart';
import 'package:qq/notificationScreen.dart';
import 'package:qq/prices.dart';
import 'package:qq/puzzleGame.dart';
import 'package:qq/termsAndCondition.dart';
import 'package:qq/wallet.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:toggle_switch/toggle_switch.dart';


import 'package:qq/customDialogBox.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = false;
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;



    return Scaffold(

      backgroundColor: Colors.white,
      endDrawer: Drawer(


        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [

            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 60, 40),


              child:  Image.asset('assets/virthink.png', alignment: Alignment.centerLeft,),
            ),
            ListTile(
              title: const Text('Home',  style: TextStyle(
                  fontSize: 18
              ),),

              leading: IconButton(
                onPressed: (){

                },
                icon: Image.asset('assets/home (3).png', ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('About Us',style: TextStyle(
                  fontSize: 18
              ),),
              leading: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
                },
                icon: Image.asset('assets/team.png'),
              ),
              onTap: () {
                // Update the state of the app.
                Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
              },
            ),
            ListTile(
              title: const Text('Contact Us',style: TextStyle(
                  fontSize: 18
              ),),
              leading: IconButton(
                onPressed: (){

                },
                icon: Image.asset('assets/support.png'),
              ),
              onTap: () {
                // Update the state of the app.
                Navigator.push(context, MaterialPageRoute(builder: (Context)=> CustomerSupport()));
              },
            ),
            ListTile(
              title: const Text('Terms & Conditions',style: TextStyle(
                  fontSize: 18
              ),),
              leading: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
                },
                icon: Image.asset('assets/terms-and-conditions.png'),
              ),
              onTap: () {
                // Update the state of the app.
                Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
              },
            ),
            ListTile(
              title: const Text('Privacy Policy',style: TextStyle(
                  fontSize: 18
              ),),
              leading: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
                },
                icon: Image.asset('assets/privacy-policy (1).png'),
              ),

              onTap: () {
                // Update the state of the app.
                Navigator.push(context, MaterialPageRoute(builder: (Context) => TermsCondition()));
              },
            ),
            ListTile(
              title: const Text('FAQ',style: TextStyle(
                  fontSize: 18
              ),),
              leading: IconButton(
                onPressed: (){

                },
                icon: Image.asset('assets/faq.png'),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: 580,
              width: MediaQuery.of(context).size.width,
              child:Stack(
                children: <Widget>[


                  Positioned(
                    top: 0,
                    left: 0,

                    width:size.width ,

                    child: Container(


                      child: Container(
                        margin: EdgeInsets.fromLTRB(30, 00, 30, 00),
                        child: Column(

                         crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(30),
                            ),



                            Container(

                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(00, 20, 00, 00),
                              child: Image.asset("assets/4-2-treasure-picture-thumb.png"),
                            ),

                            Text("Today Context", style: TextStyle(
                              color: Colors.white, fontSize: 22
                            ),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(8),
                                      color: Color(0xff537333),
                                      child: Center(
                                        child: Text("12", style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25
                                        ),),
                                      ),
                                    ),
                                    Text("HRS", style: TextStyle(
                                        color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ), ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (Context)=>PuzzleGame()));
                                      },

                                      child: Container(
                                        margin: EdgeInsets.all(2),
                                        padding: EdgeInsets.all(8),
                                        color: Color(0xffED0056),
                                        child: Center(
                                          child: Text("35", style: TextStyle(
                                              fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25
                                          ),),
                                        ),
                                      ),
                                    ),
                                    Text("MIN", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ), ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(8),
                                      color: Color(0xffC77D0A),
                                      child: Center(
                                        child: Text("09", style: TextStyle(
                                            fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25
                                        ),),
                                      ),
                                    ),
                                    Text("SEC", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ), ),
                                  ],
                                ),
                              ],
                            ),

                            Padding(padding: EdgeInsets.only(top: 25),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Starting Time - 4:00 PM", style: TextStyle(
                                  color: Colors.white
                                ), ),
                                Text("Entry Status- Eligible", style: TextStyle(
                                    color: Colors.white
                                ), )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(6),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Winners-10", style: TextStyle(
                                    color: Colors.white
                                ), ),
                                Text("Prize-calculation", style: TextStyle(
                                    color: Colors.white
                                ), )
                              ],
                            ),

                            Padding(padding: EdgeInsets.only(top: 20),),
                            Text("V", style: TextStyle(
                                color: Colors.white,
                              fontSize: 20
                            ), ),

                            Padding(padding: EdgeInsets.only(top: 30),),

                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: colorResource.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        border: Border.all(
                          width: 3,
                          color: colorResource.primaryColor,
                          style: BorderStyle.solid,
                        ),
                      ),


                    ),
                  ),

                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    top: 40 ,
                    left:20,



                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Column(

                          children: [

                            Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>Wallet()));
                                  },
                                  child: Text("\$ 180,000", textAlign: TextAlign.left, style: const TextStyle(
                                      color: Colors.white, fontSize: 20
                                  ),),
                                ),

                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 40,
                                  width: 100,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                  ),

                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (Context)=>BuyToken()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text("5", style: TextStyle(
                                            color: Colors.black, fontSize: 20
                                          ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(5),
                                            height: 24,
                                            width: 24,
                                            child: Icon(Icons.add, color: Colors.white,),


                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(22),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),

                        Column(

                          children: [
                            SizedBox(
                                height: 50,
                                width: 140,

                                child: Image.asset("assets/accountMan.png")
                                ),
                            Text("Rules", style: TextStyle(
                                color: Colors.white, fontSize: 20
                            ),),

                            Switch(
                              value: status,
                              onChanged: (value) {
                                setState(() {
                                  status = value;
                                  print(status);
                                });}
                            )
                          ],
                        ),


                      ],
                    ),
                    ),


                  Positioned(
                    top:  500 ,

                    width: size.width,



                    height: 70,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (Context)=>Prices()));
                  },
                          child: Container(

                                width: 240,
                            height: 60,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [



                                Image.asset("assets/tokens.png",height: 30,),

                                Text(
                                  'Swipe To Enter',
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 16),
                                ),

                                Container(

                                  height: 40,
                                  width: 40,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: Icon(Icons.check
                                    ,color: colorResource.primaryColor2,  ),
                                ),




                              ],
                            ),
                            decoration: BoxDecoration(
                              color: colorResource.primaryColor2,
                              borderRadius: BorderRadius.circular(20)),



                            ),
                        ),
                      ],
                    ),
                  ),




                ],
              ),
            ),
            Column(
              children: [
                // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                Container(
                  margin: EdgeInsets.all(20),
                  child: ToggleSwitch(
                    cornerRadius: 30.0,
                    activeBgColors: [[colorResource.primaryColor], [colorResource.primaryColor]],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Colors.black,
                    borderColor: [Colors.black26],
                    fontSize: 18,

                    borderWidth: 1,
                    radiusStyle: true,
                    minWidth: 150.0,
                    minHeight: 30.0,
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: ['Last Result', 'Date Range'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(

                      children: [

                        SizedBox(
                          width: 20,
                          height: 20,
                          child: FittedBox(
                            child: Image.asset('assets/arrow-up.png',color: colorResource.primaryColor2,),
                          ),
                        ),
                        Text('2', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22
                        ),),

                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                          backgroundColor: Colors.transparent,
                        ),

                        Text('Name the sjflk ', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12,
                        ),),

                        Text('@123', style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12
                        ),),
                        Text('124', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22
                        ),),
                      ],
                    ),
                    Column(
                      children: [

                        SizedBox(
                          height: 35,
                          child: Image.asset('assets/crown.png',fit: BoxFit.fitHeight,),
                        ),
                        InkWell(
                          onTap: (){

                            showDialog(context: context,
                                builder: (BuildContext context){
                                  return CustomDialogBox(
                                    title: "Rules",
                                    descriptions: "1. Rewards will be given after 1 day of competition ends."
                                        "\n\n\n\n\n",
                                    text: "Yes",
                                  );
                                }
                            );

                          },
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage:
                            NetworkImage("https://images.unsplash.com/photo-1509967419530-da38b4704bc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Text('Name the sjflk ', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12,
                        ),),

                        Text('@123', style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12
                        ),),
                        Text('124', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22
                        ),),
                      ],
                    ),
                    Column(

                      children: [
                        Text('3', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22
                        ),),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: FittedBox(
                            child: Image.asset('assets/arrow-down-filled-triangle.png',color: Colors.red,),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                          backgroundColor: Colors.transparent,
                        ),
                        Text('Name the sjflk ', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12,
                        ),),

                        Text('@123', style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12
                        ),),
                        Text('124', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22
                        ),),
                      ],
                    ),


                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: (){

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              Text((index+4).toString()+".", style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold
                              ), ),




                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                NetworkImage("https://media.istockphoto.com/photos/casual-man-on-white-picture-id531547724?k=20&m=531547724&s=612x612&w=0&h=E2f2We8XZXAxUncND6S6LSU5e1IQ-wO0cm1eMvRrXuo="),
                                backgroundColor: Colors.transparent,
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Name", style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal
                              ),
                              ),
                              Padding(padding: EdgeInsets.all(10)),

                              Container(
                                child: SfSparkLineChart(
                                  //Enable the trackball
                                  trackball: SparkChartTrackball(
                                      activationMode: SparkChartActivationMode.tap),
                                  //Enable marker
                                  marker: SparkChartMarker(
                                      displayMode: SparkChartMarkerDisplayMode.all),
                                  //Enable data label
                                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                                  data: <double>[
                                    1, 5, -6, 0,
                                  ],
                                ),
                                width: 100,
                                height: 50,
                              ),
                              Padding(padding: EdgeInsets.all(10)),

                              Container(
                                height:30,
                                width:60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffAEE3D0)
                                ),

                                child: Center(
                                  child: Text(
                                    '\$930', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: colorResource.primaryColor2,
                                      fontSize: 16
                                  ),
                                  ),
                                ),
                              )
                              //
                            ],
                          )
                      );



                    },),
                )
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar:  CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: colorResource.primaryColor,
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
  void initState() {


  super.initState();
  }





}




class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
