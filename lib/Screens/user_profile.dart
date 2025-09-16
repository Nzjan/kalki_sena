import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020B17),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(context); // go back to previous page
          },
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff222222),
        toolbarHeight: 52, // custom height
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              color: Color(0xff05203D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        // backgroundImage: NetworkImage(
                        //   "https://i.pravatar.cc/300", // sample profile image
                        // ),
                      ),

                      SizedBox(width: 13),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ramesh adhikari",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff5f5f5),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "+977-9865134421",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff5f5f5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 87,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff5f5f5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding:
                            EdgeInsets
                                .zero, // ← Optional: prevent internal padding
                      ),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff222222),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            buildInfoRowWithImage(
              "assets/user_profile/membership_id.png",
              "Membership ID",
            ),
            SizedBox(height: 12),
            buildInfoRowWithImage(
              "assets/user_profile/my_subscription.png",
              "My Subscription",
            ),
            SizedBox(height: 12),
            buildInfoRowWithImage(
              "assets/user_profile/settings.png",
              "Settings",
            ),
            SizedBox(height: 12),
            buildInfoRowWithImage(
              "assets/user_profile/terms_conditions.png",
              "Terms & Conditions",
            ),
            SizedBox(height: 12),
            buildInfoRowWithImage(
              "assets/user_profile/account_management.png",
              "Account Management",
            ),
            SizedBox(height: 12),
            buildInfoRowWithImage(
              "assets/user_profile/privacy_policy.png",
              "Privacy Policy",
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRowWithImage(
    String imagePath,
    String title, {
    VoidCallback? onTap,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xffe0e0e0), width: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 24,
                height: 24,
                color: Color(0xfff5f5f5), // remove if image has its own color
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xfff5f5f5),
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right, color: Colors.grey),
            onPressed: onTap ?? () {},
          ),
        ],
      ),
    );
  }
}
