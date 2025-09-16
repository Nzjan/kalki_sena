import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
    // for (var c in controllers) c.dispose();
    // for (var f in focusNodes) f.dispose();
    super.dispose();
  }

  void _onChanged(String value, int index) {
    // Handle paste
    if (value.length > 1) {
      for (int i = 0; i < value.length; i++) {
        if (index + i < otpLength) {
          controllers[index + i].text = value[i];
        }
      }
      int nextIndex =
          (index + value.length) < otpLength
              ? index + value.length
              : otpLength - 1;
      FocusScope.of(context).requestFocus(focusNodes[nextIndex]);
      return;
    }

    // Move forward if a digit is entered
    if (value.isNotEmpty && index < otpLength - 1) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    }
  }

  // ignore: deprecated_member_use
  void _onKey(RawKeyEvent event, int index) {
    // Handle backspace
    // ignore: deprecated_member_use
    if (event is RawKeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.backspace) {
      if (controllers[index].text.isEmpty && index > 0) {
        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
        controllers[index - 1].clear();
      }
    }
  }

  bool get isOtpComplete =>
      controllers.every((controller) => controller.text.isNotEmpty);

  void _verifyOtp() {
    if (isOtpComplete) {
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please enter all 6 digits")));
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
              onPressed: () => Navigator.pop(context),
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
      body: Align(
        alignment: Alignment.topCenter,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(otpLength, (i) {
                return Row(
                  children: [
                    SizedBox(
                      width: 50,
                      // ignore: deprecated_member_use
                      child: RawKeyboardListener(
                        focusNode: FocusNode(),
                        onKey: (event) => _onKey(event, i),
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (value) => _onChanged(value, i),
                        ),
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
                onPressed: _verifyOtp,
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
