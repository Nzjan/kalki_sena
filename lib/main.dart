import 'package:flutter/material.dart';
import 'package:notes/Screens/coming_soon.dart';
import 'package:notes/Screens/end.dart';
import 'package:notes/Screens/phone_verification.dart';
import 'package:notes/Screens/send_verification.dart';
import 'package:notes/Screens/set_new_password.dart';
import 'package:notes/Screens/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalki',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dashboard')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Set new Password'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetNewPassword()),
                );
              },
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('User Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );
              },
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('Send Verification'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendVerification()),
                );
              },
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('Phone Verification'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneVerification()),
                );
              },
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('end'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EndPage()),
                );
              },
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('Coming Soon'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComingSoonLayout()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
