import 'package:flutter/material.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

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

      body: Align(
        alignment:
            Alignment
                .topCenter, // centers the Column both vertically & horizontally
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // shrink to content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Verification text
              Container(
                width: 408,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      "Set New Password",
                      style: TextStyle(
                        color: Color(0xfff5f5f5),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Set your new password",
                      style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Password field
              Container(
                width: 408,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter your new password',
                    hintStyle: TextStyle(
                      color: Color(0xff6b7280),
                      fontSize: 14,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xffe0e0e0),
                        width: 0.5,
                      ),
                    ),
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
                        color: Color(0xffe0e0e0),
                        width: 1.5,
                      ), // Highlight white
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),
              // Confirm password field
              Container(
                width: 408,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: TextStyle(color: Color(0xffffffff)),
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyle(
                      color: Color(0xff6b7280),
                      fontSize: 14,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xffe0e0e0),
                        width: 0.5,
                      ),
                    ),
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
                      ), // <- Highlight white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "At least 1 number or a special character.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Save button
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
                    "Save",
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
