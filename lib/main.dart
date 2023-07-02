import 'package:flutter/material.dart';
import 'package:project1/RegisterPage.dart';
import 'package:project1/WelcomePage.dart';
import 'package:project1/loginPage.dart';
import 'LogIn2.dart';
import 'loginPage.dart';
void main(){
  runApp(MyApp());

}
class  MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return  const MaterialApp(home: WelcomePage(),

);
}
}