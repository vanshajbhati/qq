import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(

      appBar: PreferredSize(

        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          leading:     Container(
            width: 200,
            padding: EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>Home()));
              },


              child:     Row(
                children: [ ImageIcon( AssetImage("assets/left-arrow.png", ), color: Colors.black,size: 20,),
                  Flexible(
                    child: Text("Wallet", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      color: Color(0xff3E3C3C),
                    ),),
                  ),


                ],),
            ),
          ),
          leadingWidth: 200,

          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
                child: ImageIcon( AssetImage("assets/add (1).png", ), color: Colors.black,size: 30,)
            ),

          ],


          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          //   children: [
          //
          //
          //
          //
          //
          //
          //
          //     InkWell(
          //         onTap: (){
          //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>Home()));
          //         },
          //
          //         child: ImageIcon( AssetImage("assets/cancel.png", ), color: Colors.black,size: 40,)),
          //   ],
          // ),
        ),
      ),
      backgroundColor: Color(0xffEFF1FE),

      body: SingleChildScrollView(
        child: Container(


            child: Column(
              children: [




              Column(
                children: [

                  Text("Rs. 10,000.00", style: TextStyle(
                      color: Color(0xff3E3C3C),
                      fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),),

                  Padding(padding: EdgeInsets.all(10)),

                  Card(

                    color: Color(0xff3B58FB),


                    child:  Container(

                      width: 140,

                      padding: EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Withdraw',textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),



                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),),
                  ),



                  Container(
                    padding:  EdgeInsets.only(top:size.width/18, bottom:size.width/18 ),
                    width: 270,
                    child: Text('1. Money will be credited within next 48 hours.\n'
                        '\n2.Wallet Money will be erased if you dont withdraw within 3 days', style: TextStyle(
                        fontSize: 16
                    ),),
                  ),





                ],
              ),


                Container(
                  width: size.width,


                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ), ),



                  child:Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Text('History', style: TextStyle(
                                fontSize: 22
                            ),),
                            Card(
elevation: 1,
                              color: Color(0xffF8F6F6),


                              child:  Container(

                                width: size.width/3,

                                padding: EdgeInsets.all(15),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    'All Transaction',textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                              ),



                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:  ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: (){

                                },
                                child:  Container(


                                    margin: EdgeInsets.fromLTRB(00, 00, 00, 15),
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
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Sent",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                      color: colorResource.primaryColor2,

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
                        )

                      ],
                    ),
                  ),
                )
              ],
            )



        ),
      ),

    );
  }
}
