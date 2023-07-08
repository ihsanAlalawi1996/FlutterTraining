import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Home/HomePage.dart';
class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 80.0,
              color: Colors.orange,
            ),
            SizedBox(height: 16.0),
            Text(
              'Login successful!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            MaterialButton(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
