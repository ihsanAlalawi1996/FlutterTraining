import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.green.shade800,
                  Colors.green.shade400
                ]
              )
          ),

          child: Column(
            children:[
              Container(

                height:300,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 32),),
                    SizedBox(height: 7,),


                    Text("Welcome Back",style: TextStyle(color: Colors.white),),
                  ],),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),

                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    TextField(
                      // style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        hintText: "Email :",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                      ),
                    ),
                    // Divider(color: Colors.black54,height: 1,),    no use for it
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey)
                      ),
                    ),
                    SizedBox(height: 40,),
                    MaterialButton(
                      onPressed: (){},
                      height: 40,
                      minWidth: 200,
                      child: Text("Login",),
                      textColor: Colors.white,
                      color: Colors.green.shade400,
                      shape: StadiumBorder(),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "login with sms",
                      style: TextStyle(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: (){},
                          height: 40,
                          minWidth: 140,
                          child: Text("facebook",),
                          textColor: Colors.white,
                          color: Colors.blue,
                          shape: StadiumBorder(),
                        ),
                        MaterialButton(
                          onPressed: (){},
                          height: 40,
                          minWidth: 140,
                          child: Text("Github",),
                          textColor: Colors.white,
                          color: Colors.black,
                          shape: StadiumBorder(),
                        )
                        ],
                      )
                    ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

