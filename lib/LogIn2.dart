import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class LogIn2 extends StatefulWidget {
  const LogIn2({Key? key}) : super(key: key);

  @override
  State<LogIn2> createState() => _LogIn2State();
}

class _LogIn2State extends State<LogIn2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple.shade400,
                Colors.orangeAccent,
                Colors.green.shade200,
                Colors.blue.shade300
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)
          ),

          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),

                child: SizedBox(height: 200,
                  width: 300,
                  child: Lottie.asset("assets/lottie/login2.json"),


                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 25,left: 25,top: 1,),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),

                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Hello", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      const Text("Please Login to Your Account",style: TextStyle(fontWeight:FontWeight.w200)),
                      const SizedBox(height: 15),
                      const TextField(
                        decoration: InputDecoration(
                            suffix: Icon(Icons.mail_outline_rounded,color: Colors.red,),
                            labelText: "Email Address",
                            labelStyle: TextStyle(fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))

                        ),
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                          labelStyle:TextStyle(fontWeight: FontWeight.w300),
                          labelText: "Password",
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          suffix: Icon(Icons.visibility_off_outlined,color: Colors.red),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,

                        child:
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.orange,fontSize: 11)
                            )
                        )
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          gradient: LinearGradient(colors: [Colors.purple,Colors.deepOrangeAccent],

                          )
                        ),
                        width: 250,
                        child: MaterialButton(
                          onPressed: (){},
                          textColor: Colors.white,
                          child: (
                          const Text("Login",style: TextStyle(color: Colors.white,fontSize: 19))
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Text("or login using social media Account", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                      SvgPicture.asset("assets/Icons/facebook-2.svg",width: 12,colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn)),
                      SvgPicture.asset("assets/Icons/google-icon.svg",width: 18,colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn)),
                      SvgPicture.asset("assets/Icons/twitter.svg",width: 20,colorFilter: ColorFilter.mode(Colors.orange, BlendMode.srcIn)),
                      SvgPicture.asset("assets/Icons/linkedin.svg",width: 20,colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn)),


                          ]
                      ),
                    ],

                  ),
                ),
            ],
          ),
          )),
    );
  }
}
