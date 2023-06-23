import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/CompleteProfile.dart';
import 'package:project1/LogIn2.dart';
import 'package:project1/WelcomePage.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 // final style = TextStyle(fontSize: 40, fontFamily: FontWeight.bold);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade300,
          shadowColor: Colors.white,
        ),
          body: Center(

              child:Container(
                padding: EdgeInsets.fromLTRB(10, 7, 10, 5),
                child: Column(children: [

                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage()),);}
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text("Register Account", style: TextStyle( fontSize: 27),),
                  const SizedBox(height: 5),
                  const Text("Complete your details or continue \n with social media", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                  const SizedBox(height: 65),


                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      hintText: " Enter your email",
                      labelText: "Email",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(Icons.email_outlined,size: 28,),
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
                      suffixIcon: Icon(Icons.lock_outline_rounded),
                    ),
                  ),

                  const SizedBox(height: 22,),

                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      hintText: " Re-enter your password",
                      labelText: "Confirm Password",

                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.lock_outline_rounded),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  MaterialButton(
                      onPressed:() {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CompleteProfile()),
                      );},
                    shape: StadiumBorder(),
                    color: Colors.orange.shade800,
                    textColor: Colors.white,
                    child: Text("Continue",style: TextStyle(fontSize: 17),),
                    height: 53,
                    minWidth: 500,

                  ),
                  const SizedBox(height: 40),

                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WelcomePage()),
                          );
                        },
                        child:
                        SvgPicture.asset("assets/icons/linkedin.svg",colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),width: 12,height: 12,),
                       // minWidth: 40,
                      ),

                      MaterialButton(
                        onPressed:() {},
                        child:  SvgPicture.asset("assets/icons/google-icon.svg",colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),width: 12,height: 12,),
                        //minWidth: 40,

                      ),

                      MaterialButton(
                        onPressed:() {},
                        child:  SvgPicture.asset('assets/icons/twitter.svg',width: 12,height: 12,),
                        height: 20,
                       // minWidth: ,
                      ),
                    ],
                  ),
                  const Text("by continuing your confirm that you agree ",textAlign: TextAlign.center, style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),),
                ],
                ),


              ),

          ),
      ),
    );
  }
}