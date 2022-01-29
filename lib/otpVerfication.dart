import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qq/colors.dart';

import 'package:qq/home.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({Key? key}) : super(key: key);

  @override
  _otpVerificationState createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
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
      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        child: Container(

          height: MediaQuery.of(context).size.height - 100 ,

          padding: EdgeInsets.fromLTRB(40, 00, 40, 40),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 250,
                child: Image.asset('assets/login.png'), ),

              Column(
                children: [
                  Text(
                    'Verification',textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    'We have sent a 4 digit otp at your number. Please Enter it within 5 min',textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),

                ],
              ),




            PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: true,
              obscuringCharacter: '*',
              obscuringWidget: FlutterLogo(
                size: 24,
              ),
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,

              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                print("Completed");
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                print(value);
                setState(() {

                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),











              InkWell(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                      color: colorResource.primaryColor,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text('Submit',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>Home()));
                },
              ),





            ],
          ),
        ),
      ),

    );
  }
}
