import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/CompleteProfile.dart';
import 'package:project1/ForgotPasswordPage.dart';

import 'RegisterPage.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  bool checkedValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.shade300,
            shadowColor: Colors.white,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children:  [
                const SizedBox(height: 8,),
                Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CompleteProfile()),);}
                    )),
                // const SizedBox(height: 15,),
                const Text("Welcome Back",style: TextStyle( fontSize: 28)),
                const SizedBox(height: 5),
                const Text("Sign in with your email and password \n or continue with social media", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                const SizedBox(height: 45),


                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    hintText: " Enter your email",
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: const Icon(Icons.email_outlined,size: 30,weight: 0.2,),
                  ),
                ),
                const SizedBox(height: 22,),

                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    hintText: " Enter your password",
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: const Icon(Icons.lock_outline_rounded,size: 20,),
                  ),
                ),
                const SizedBox(height: 22,),



                Row(
                  children: [
                    CheckboxListTile(
                            title: Text("Remmember me",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 11),),
                            value: checkedValue,
                            onChanged: (newValue) {

                              setState(() {
                                checkedValue = newValue!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                    Align(
                              // alignment: Al|ignment.bottomRight,

                              child:
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
                                    );
                                  },
                                  child: const Text(
                                      "Forgot Password",
                                      style: TextStyle(decoration:TextDecoration.underline ,color: Colors.grey,fontSize: 13, )
                                  )
                              )
                          ),
                  ],
                ),


                MaterialButton(
                  onPressed:() {
                   },
                  shape: StadiumBorder(),
                  color: Colors.orange.shade800,
                  textColor: Colors.white,
                  child: Text("continue",style: TextStyle(fontSize: 17),),
                  height: 53,
                  minWidth: 500,

                ),
                const SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("assets/Icons/google-icon.svg",width: 12,),
                      SvgPicture.asset("assets/Icons/facebook-2.svg",width: 8),
                      SvgPicture.asset("assets/Icons/twitter.svg",width: 15,),
                    ]
                ),
                const SizedBox(height: 35),

            RichText(
              text: const TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.black, fontSize: 13),
                children: <TextSpan>[
                  TextSpan(text: ' Sign Up', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),

              ],
            ),
          ),
    ));
  }
}
