import 'package:flutter/material.dart';
import 'package:notes/Screens/coming_soon.dart';
import 'package:notes/Screens/donate_economists_main.dart';
import 'package:notes/Screens/donate_economists_op1.dart';
import 'package:notes/Screens/donate_economists_op2.dart';
import 'package:notes/Screens/donate_economists_op3.dart';
import 'package:notes/Screens/find_passenger.dart';
import 'package:notes/Screens/payment_method.dart';
import 'package:notes/Screens/phone_verification.dart';
import 'package:notes/Screens/qr_page.dart';
import 'package:notes/Screens/send_verification.dart';
import 'package:notes/Screens/set_new_password.dart';
import 'package:notes/Screens/sliding_image.dart';
import 'package:notes/Screens/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('User Profile'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfile(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Reset Password'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetNewPassword(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Email or Phone Verification'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SendVerification(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('OTP Verification'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneVerification(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Sliding image coming soon'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SlidingImageWidget(
                            imagePath: 'assets/images/coming_soon/close.png',
                          ),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Coming Soon'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ComingSoonLayout(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Donate to Economists main'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DonatePage()),
                  );
                },
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 177, 198, 214),
                  foregroundColor: Colors.black,
                ),
                onPressed: () => showPaymentMethodBottomSheet(context),
                child: const Text(
                  'Make Payment',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                child: const Text('Donate to Economists op1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DonatePageOP1(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Donate to Economists op2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DonatePageOP2(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Donate to Economists op3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DonatePageOP3(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('qr page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QrPage()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('find t, b, and passenger page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindPassenger(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
