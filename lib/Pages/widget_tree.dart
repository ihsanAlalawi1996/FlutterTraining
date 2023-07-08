import 'package:flutter/cupertino.dart';
import 'package:project1/Pages/LoginSuccessful.dart';
import 'package:project1/Pages/WelcomeBack.dart';

import '../Auth.dart';
import '../Home/HomePage.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanged,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return LoginSuccessful();
          }else{
            return const WelcomeBack();
          }

        });
  }
}
