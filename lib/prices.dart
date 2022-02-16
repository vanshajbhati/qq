import 'package:flutter/material.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';

class Prices extends StatefulWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  _PricesState createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(

        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Color(0xffEDEDF0),
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
                    child: Text("Prices", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xff3E3C3C),
                    ),),
                  ),


                ],),
            ),
          ),
          leadingWidth: 200,






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

      body: SingleChildScrollView(
        child: Container(
          width:size.width ,
          child: Column(
            children: [
              Container(
                height: 400,
                width:size.width,
                child: Stack(
                  children: <Widget>[


                    Positioned(
                      top: 0,
                      left: 0,
                      height: 350,

                      width:size.width,


                      child: Container(

                        decoration: BoxDecoration(
                          color: Color(0xffEDEDF0),
                          border: Border.all(
                            width: 3,
                            color: Color(0xffEDEDF0),
                            style: BorderStyle.solid,
                          ),
                        ),



                        child: Container(
                          margin: EdgeInsets.all(20),


                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [


                              Card(
                                elevation: 10,
                                shadowColor: Color(0xffF1D109),
                                shape: RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(150.0),

                                  ),

                                ),
                                child: CircleAvatar(
                                  radius: 110.0,
                                  child: ClipRRect(
                                    borderRadius:BorderRadius.circular(80),
                                    child: Image.asset("assets/coinsDropping.png"),
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),





                            ],
                          ),
                        ),


                      ),
                    ),


                    Positioned(
                      top: 300,
                      width: size.width,

                      child:   Column(
                        children: [
                          Container(

                            margin: EdgeInsets.only(top: 20),
                            width: 250,
                            height: 50,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [



                                Image.asset("assets/rupeeSingleCoin.png",height: 38,),


                                Text(
                                  'Rs. 5,000',
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),


                                Text(
                                  ' ',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20),
                                ),




                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffF9FBF9),
                                borderRadius: BorderRadius.circular(40)),



                          ),
                        ],
                      ),),






                  ],
                ),

              ),

              Container(
                margin: EdgeInsets.fromLTRB(40, 10, 40, 15),

                child: Column(


                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top Players", style: TextStyle(
                       color: Color(0xffAFB0B4),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),


                        Text("Reward", style: TextStyle(
                            color: Color(0xffAFB0B4),
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),)
                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: (){

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:  20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [


                                        Image.asset("assets/1stTag.png", width: 80,),


                                        Padding(padding: EdgeInsets.all(10)),


                                        Row(
                                          children: [
                                            Text("Rs. 50,000", style: TextStyle(
                                                fontSize: 20, fontWeight: FontWeight.normal
                                            ),
                                            ),
                                            Padding(padding: EdgeInsets.all(10)),
                                            Image.asset("assets/rupeeCash.png", width: 40,)
                                          ],
                                        )




                                        //
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      width: size.width-100,
                                      color: Colors.grey,
                                      height: 3,
                                    )
                                  ],
                                ),
                              )
                          );



                        },),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("First", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal
                        ),
                        ),
                        Text(" 1000", style: TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.normal
                        ),
                        ),
                        Text(" Rankers's get", style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal
                        ),
                        ),
                        Text(" 10Rs", style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.normal
                        ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),

                    ),
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
