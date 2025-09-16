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
              ),
            ),
          ],
        ),
        leadingWidth: 100, // make space for icon + text
        backgroundColor: Color(0xff020B17),
        toolbarHeight: 52,
      ),

      body: Align(
        alignment: Alignment.topCenter, // centers all content
        child: SingleChildScrollView(
          // prevents overflow with keyboard
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Verification text
              Container(
                width: 408,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Verification email or phone number",
                  style: TextStyle(
                    color: Color(0xfff5f5f5),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Enter box
              Container(
                width: 408,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter email or phone number',
                    hintStyle: TextStyle(
                      color: Color(0xff6b7280),
                      fontSize: 17,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xffe0e0e0),
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ), // highlight white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Send OTP button
              Container(
                width: 408,
                height: 54,
                margin: EdgeInsets.symmetric(horizontal: 16),
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
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
