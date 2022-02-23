import 'package:flutter/material.dart';
import 'package:qq/colors.dart';
import 'package:qq/home.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool valueCheck =false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },


              icon: Icon(Icons.arrow_back, color: Colors.black,)
          ),
        ),
      ),

      body:SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 280,

                child: Image.asset('assets/registration.png'), ),


              Padding(
                padding: EdgeInsets.only(top: 20),
              ),



              Container(
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up ", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
              
                      children: [
                        Icon(Icons.alternate_email_rounded, size: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                        ),
                        Container(

                            height: 55,

                            width: 260,



                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Expanded(child: TextField(


                                  decoration: InputDecoration(
                                    hintText: "Enter Email",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.cyan),
                                    ),
                                  ),
                                  onChanged: (value) {

                                    var number = value.toString();
                                  },
                                ),),




                              ],
                            )

                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Icon(Icons.person, size: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                        ),  Container(

                            height: 55,

                            width: 260,



                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Expanded(child: TextField(


                                  decoration: InputDecoration(
                                    hintText: "Enter Name",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.cyan),
                                    ),
                                  ),
                                  onChanged: (value) {

                                    var number = value.toString();
                                  },
                                ),),




                              ],
                            )

                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Icon(Icons.phone, size: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                        ),

                        Container(

                            height: 50,

                            width: 260,



                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Expanded(child: TextField(


                                  decoration: InputDecoration(
                                    hintText: "Enter Phone",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.cyan),
                                    ),
                                  ),
                                  onChanged: (value) {

                                    var number = value.toString();
                                  },
                                ),),




                              ],
                            )

                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),

                    Column(


                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width:30,
                              height: 10,
                              child: Checkbox(
                              value: this.valueCheck,
                                onChanged: ( value) {
                                  setState(() {
                                    this.valueCheck = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "By Signing up, you are agree to the ", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11
                            ),
                            ),

                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (Context)=>Home()));
                              },
                              child: Text(
                                "Terms & Conditions ", style: TextStyle(
                                  color: colorResource.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11
                              ),
                              ),
                            ),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "           and ", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11
                            ),
                            ),
                            Text(
                              "Privacy Policy ", style: TextStyle(
                                color: colorResource.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 11
                            ),
                            ),
                          ],
                        ),





                      ],
                    ),






                  ],
                ),
              ),












              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              InkWell(
                child: Container(

                  width: 170,
                  padding: EdgeInsets.all(15),

                  decoration: BoxDecoration(
                      color: colorResource.primaryColor,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text('Continue',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                  ),
                ),


                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>Home()));
                },
              ),



              SizedBox(
                height: 20,
              )





            ],
          ),
        ),
      ),




    );
  }
}
