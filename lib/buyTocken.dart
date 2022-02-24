import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';

class BuyToken extends StatefulWidget {
  const BuyToken({Key? key}) : super(key: key);

  @override
  _BuyTokenState createState() => _BuyTokenState();
}

class _BuyTokenState extends State<BuyToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 30),
         child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>Home()));
                      },

                      child: ImageIcon( AssetImage("assets/left-arrow.png", ), color: Colors.black,size: 20,)),


                  Text("Buy Ticket", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),

                ],
              ),

              SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.asset("assets/ticket-flight.png")),

              Text("20 Ticket code = 100Rs", style: TextStyle(
                color: colorResource.primaryColor2,
                fontSize: 20
              ),),

              Padding(padding: EdgeInsets.all(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 3),
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child: TextField(

                       decoration: InputDecoration(
                           hintText: 'Enter the number'
                       ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Text('Apply Promo code', style: TextStyle(
                    fontSize: 11
                  ),)
                ],
              ),

              Padding(padding: EdgeInsets.all(10)),


              Text('T&C Apply', style: TextStyle(
                  fontSize: 18
              ),),
              Padding(padding: EdgeInsets.all(10)),

              Card(

                color: colorResource.primaryColor,


                  child:  Container(

                    width: 170,
                    padding: EdgeInsets.all(15),
                    child: Text(
                        'Buy Tickets',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 18),
                      ),
                  ),

                

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),),
              ),

              Padding(padding: EdgeInsets.all(10)),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Colors.grey,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text("2 Ticket codes are left", style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: (){

                      },
                      child:  Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        color: Colors.grey[100],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "5",style: TextStyle(
                              fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                              decorationColor: colorResource.primaryColor

                        ),
                            ),
                            Text(
                                "2",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: colorResource.primaryColor

                              ),
                            ),
                            Text(
                                "3",
                              style:   TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: colorResource.primaryColor

                              ),
                            ),
                            Text(
                                "7",
                           style:   TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: colorResource.primaryColor

                              ),
                              
                              
                            ),


                          InkWell(

                            onTap: (){
                              Clipboard.setData(ClipboardData(text: "5237"));
                            },

                              child: ImageIcon( AssetImage("assets/copy.png", ), color: Colors.black,size: 20,))
                            

                          ],
                        )




                      ),
                  );



                },)


            ],
          )



        ),
      ),


    );
  }
}
