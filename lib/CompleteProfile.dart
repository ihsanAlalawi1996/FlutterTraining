import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/RegisterPage.dart';
import 'package:project1/WelcomeBack.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()),);}
                  )),
              const SizedBox(height: 15,),
              const Text("Complete Profile",style: TextStyle( fontSize: 27)),
              const SizedBox(height: 5),
              const Text("Complete your details or continue \n with social media", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              const SizedBox(height: 45),


              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: " Enter your first name",
                  labelText: "First Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: const Icon(Icons.person_outline_outlined,size: 30,weight: 0.2,),
                ),
              ),
              const SizedBox(height: 22,),

              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: " Enter your last name",
                  labelText: "Last Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: const Icon(Icons.person_outline_outlined,size: 30,),
                ),
              ),
              const SizedBox(height: 22,),

              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "Enter your phone number",
                  labelText: "Phone Number",

                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: const Icon(Icons.phone_android_outlined,weight: 0.1,),
                ),
              ),
              const SizedBox(height: 22,),

              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 50,top: 20,bottom: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "Enter your phone address",
                  labelText: "Address",

                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.location_on_outlined),
                ),
              ),
              const SizedBox(height: 33,),

              MaterialButton(
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomeBack()),
                  );},
                shape: StadiumBorder(),
                color: Colors.orange.shade800,
                textColor: Colors.white,
                child: Text("continue",style: TextStyle(fontSize: 17),),
                height: 53,
                minWidth: 500,

              ),
              const SizedBox(height: 33,),

              const Text("By continuing your confirm that you agree \n with our Terms and Conditions",
                textWidthBasis: TextWidthBasis.parent,
                textAlign: TextAlign.center, style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                  fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }
}
