import 'package:flutter/material.dart';

class SendVerification extends StatelessWidget {
  const SendVerification({super.key});

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

                // fontFamily:
              ),
            ),
          ],
        ),
        leadingWidth: 100, // make space for icon + text
        backgroundColor: Color(0xff020B17),
        toolbarHeight: 52,
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            //verification text
            Container(
              height: 30,
              width: 408,
              margin: EdgeInsets.only(left: 16),
              // padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Verification email or phone number",
                style: TextStyle(
                  color: Color(0xfff5f5f5),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),

            //enter box
            Container(
              width: 408,
              //height: 56,
              margin: EdgeInsets.only(left: 16),
              // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              child: TextField(
                style: TextStyle(color: Color(0xffffffff)),
                decoration: InputDecoration(
                  hintText: 'Enter email or phone number',
                  hintStyle: TextStyle(color: Color(0xff6b7280), fontSize: 17),
                  filled: false,

                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xffe0e0e0),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            //send otp button
            Container(
              width: 408,
              height: 54,
              margin: EdgeInsets.only(left: 16),
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 93.5,
              //   vertical: 15.5,
              // ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3087e5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white, // Moved here
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
