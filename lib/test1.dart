import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class test1 extends StatefulWidget {
  const test1({Key? key}) : super(key: key);

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          decoration:  BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end:Alignment.bottomRight,
                  colors: [
                    Colors.pinkAccent,
                    Colors.orange.shade300,
                    Colors.lightGreenAccent.shade200,
                    Colors.blue,
                  ])),
          child: Column(
            children: [

              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      SizedBox(
                        height: 200,
                        width: 300,
                        child: Lottie.asset("assets/lottie/login2.json"),
                      ),
                      const SizedBox(height: 5,)

                    ]
                ),
              ),
              //Expanded(
              Container(
                margin: const EdgeInsets.fromLTRB(18,0,18,25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),

                  ),
                ),
                child: Column(

                  children: [
                    const SizedBox(height: 15,),
                    const Text("Hello",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                    const Text(" please login to your account",style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,),
                    const SizedBox(
                      height: 20,
                    ),
                    //add shadow
                    Container(
                      margin: const EdgeInsets.fromLTRB(18,0,18,0),
                      decoration:  const BoxDecoration(
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),

                      ),
                      child: Column(
                        children: [
                          const TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: //Box
                            InputDecoration(

                              suffix: Icon(Icons.mail_outline,color: Colors.red,),
                              fillColor: Colors.white,
                              filled: true,
                              //floatingLabelBehavior: FloatingLabelBehavior.always,
                              label: Text("Email"),
                              hintText: "Enter your email",
                              hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))),
                              //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                          const TextField(
                            //strutStyle: StrutStyle(),
                            decoration: InputDecoration(
                              suffix: Icon(Icons.visibility_off_outlined,color: Colors.red,),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "password",
                              labelStyle: TextStyle(color: Colors.grey),
                              hintText: "Enter your password",
                              hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey),
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                            ),
                          ),
                          Container(alignment: Alignment.centerRight,
                              child: TextButton(onPressed: (){}, child: Text("Forget password",style: TextStyle(color:Colors.orange.shade600)))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 300,
                      decoration:  BoxDecoration(
                          borderRadius:  const BorderRadius.all(Radius.circular(40)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end:Alignment.bottomRight,
                              colors: [
                                Colors.purple,
                                Colors.pink.shade600,
                                Colors.orange.shade800,
                              ])),
                      child: MaterialButton(
                        onPressed: () {},
                        height: 30,
                        minWidth: 300,
                        textColor: Colors.white,
                        // color: Colors.green.shade700,
                        shape:  const StadiumBorder(),
                        child: const Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      "or login using social media Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     //IconButton(onPressed: (){}, icon: Image.asset("assets/images/facebook.png")),
                    //     MaterialButton(onPressed: (){},
                    //       child: const Icon(FontAwesomeIcons.facebook,size: 30,color: Colors.blue,),
                    //     ),
                    //     const SizedBox(width: 6,),
                    //     MaterialButton(onPressed: (){},
                    //       child: const Icon(FontAwesomeIcons.google,size: 30,color: Colors.red,),
                    //     ),
                    //     const SizedBox(width: 6,),
                    //     MaterialButton(onPressed: (){},
                    //       child:  const Icon(FontAwesomeIcons.twitter,size: 30,color: Colors.amber,),
                    //     ),
                    //     const SizedBox(width: 6,),
                    //     MaterialButton(onPressed: (){},
                    //       child: const Icon(FontAwesomeIcons.linkedinIn,size: 30,color: Colors.green,),
                    //     ),
                    //   ],
                    // ),
                    //const SizedBox(height: 10,),
                  ],

                ),
              ),
              // )
            ],
          ),
        ),
      ),
    );

  }

}
