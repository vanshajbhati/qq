
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qq/colors.dart';
import 'package:qq/otpVerfication.dart';


class EnterNumber extends StatefulWidget {
  const EnterNumber({Key? key}) : super(key: key);

  @override
  _EnterNumberState createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {

  String number='0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                  height: 250,
              width: 280,
              child: Image.asset('assets/login.png'), ),



              Column(
                children: [
                  Text(
                    'Enter your phone number',textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                  ),
                  Text(
                    'We will send a code (via SMS text message) to your phone number',textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal
                    ),
                  ),

                ],
              ),








              Container(

                height: 55,
                 width: 280,

                decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  border: Border.all(color: Colors.black12, width: 1.0)

                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                     CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    favorite: ['+91','IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                ),


                    Expanded(child: TextField(

                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                      onChanged: (value) {

                        number = value.toString();
                      },
                    ),),




                  ],
                )

              ),



              InkWell(
                child: Container(

                  margin: EdgeInsets.only(top: 15),

                  width: 170,
                  padding: EdgeInsets.all(15),

                  decoration: BoxDecoration(
                      color: colorResource.primaryColor,
                    borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text('Send OTP',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),),
                  ),
                ),


                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>otpVerification()));
                },
              ),





            ],
          ),
        ),
      ),

    );
  }
}
