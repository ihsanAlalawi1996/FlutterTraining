import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Pages/LogIn2.dart';
import 'package:project1/Pages/WelcomeBack.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeBack()),);}
                    )),
                const SizedBox(height: 50,),
                const Text("Forgot Password",style: TextStyle( fontSize: 28)),
                const SizedBox(height: 5),
                const Text("Please enter your email and we will send \n you a link to return to your account", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                const SizedBox(height: 70),


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
                const SizedBox(height: 120,),



                MaterialButton(
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn2()),
                    );},
                  shape: StadiumBorder(),
                  color: Colors.orange.shade800,
                  textColor: Colors.white,
                  child: Text("continue",style: TextStyle(fontSize: 17),),
                  height: 53,
                  minWidth: 500,

                ),
                const SizedBox(height: 50),
                const SizedBox(height: 35),

                RichText(
                  text: const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w300),
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
