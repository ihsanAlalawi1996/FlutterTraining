import 'dart:ffi';
import 'package:project1/RegisterPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController controller = new PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        shadowColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const Text("TOKOTO", style: TextStyle(color: Color(0xFFff7643), fontSize: 32, fontFamily: "Muli")),
            // const Text("Welcome to Tokoto, Let's shop!", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
            SizedBox(height: 20,),
            // Image.asset("assets/images/splash_1.png",width: 230,height: 400,),

            // SizedBox(
            //   width: 330,
            //   height: 320,
            //   child: PageView.builder(
            //
            //     controller: controller,
            //     itemCount: 3,
            //     itemBuilder: (_, index) => Container(
            //       margin: EdgeInsets.only(right: 20,left: 35,),
            //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/splash_${index+1}.png"),fit: BoxFit.fitWidth)),
            //     ),
            //   ),
            // ),
            SmoothPageIndicator(controller: controller, count: 3,effect: ExpandingDotsEffect(activeDotColor:Color(0XFFff7643),dotColor: Colors.grey.shade200,dotHeight: 6,dotWidth: 7),),

            SizedBox(height: 120,),
            MaterialButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
              color: Color(0XFFff7643),
              minWidth: 320,
              height: 50,
              textColor: Colors.white,
              shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20),),borderSide: const BorderSide(color: Color(0XFFff7643), width: 0.0),),
              child: Text("Continue",style: TextStyle(fontSize: 16),),
            ),
// THIS is ihsan's code

          ],
        ),
      ),
    ));
  }
}
