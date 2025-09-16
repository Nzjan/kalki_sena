import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final int otpLength = 6;
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(otpLength, (_) => TextEditingController());
    focusNodes = List.generate(otpLength, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < otpLength - 1) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    }
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020B17),
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 20),
            ),
            SizedBox(width: 10),
            Text(
              "Back",
              style: TextStyle(
                color: Color(0xfff5f5f5),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Color(0xff020B17),
        toolbarHeight: 52,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            Container(
              width: 408,
              margin: EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Text(
                    "Phone Verification",
                    style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Enter your OTP code",
                    style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // OTP input fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(otpLength, (i) {
                return Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextField(
                        controller: controllers[i],
                        focusNode: focusNodes[i],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(0xffe0e0e0),
                              width: 0.5,
                            ),
                          ),
                        ),
                        onChanged: (value) => _onChanged(value, i),
                      ),
                    ),
                    if (i < otpLength - 1) SizedBox(width: 10),
                  ],
                );
              }),
            ),
            SizedBox(height: 29),
            Container(
              width: 408,
              height: 54,
              margin: EdgeInsets.only(left: 16),
              child: ElevatedButton(
                onPressed: () {
                  String otp = controllers.map((c) => c.text).join();
                  print("Entered OTP: $otp");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3087e5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend again.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffBFDAF7),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
