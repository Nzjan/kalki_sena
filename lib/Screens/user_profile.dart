import 'package:flutter/material.dart';
import 'package:notes/main.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020B17),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(context); // go back to previous page
          },
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff222222),
        toolbarHeight: 52, // custom height
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserHeader(),
            const SizedBox(height: 24),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/membership_id.png",
              "Membership ID",
              "Your Membership ID is 12345",
            ),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/my_subscription.png",
              "My Subscription",
              "You are subscribed to Premium Plan",
            ),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/settings.png",
              "Settings",
              "Change app settings here",
            ),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/terms_conditions.png",
              "Terms & Conditions",
              "View all terms and conditions.",
            ),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/account_management.png",
              "Account Management",
              "Manage your account details here.",
            ),
            _buildInfoRowWithBottomSheet(
              context,
              "assets/images/user_profile/privacy_policy.png",
              "Privacy Policy",
              "Read our privacy policy.",
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      color: const Color(0xff05203D),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 35),
              const SizedBox(width: 13),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
                backgroundColor: const Color(0xfff5f5f5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.zero,
              ),
              child: const Text(
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
    );
  }

  Widget _buildInfoRowWithBottomSheet(
    BuildContext context,
    String imagePath,
    String title,
    String bottomSheetContent,
  ) {
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
          // Left side (image + text)
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 24,
                height: 24,
                color: const Color(0xfff5f5f5),
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

          // Right chevron icon wrapped in InkWell
          InkWell(
            onTap: () {
              _showBottomSheet(context, title, bottomSheetContent);
            },
            child: const Icon(Icons.chevron_right, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context, String title, String content) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder:
          (context) => Container(
            width: 440,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff222222),
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xfff5f5f5),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xff747474),
                        size: 16,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                // const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Column(
                    children: [
                      // Delete Account Button
                      Container(
                        height: 52,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.3),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/delete_account.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "Delete Account",
                                  style: const TextStyle(
                                    color: Color(0xfff5f5f5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Logout Button
                      Container(
                        height: 52,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.3),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => HomePage()),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/logout.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "Logout",
                                  style: const TextStyle(
                                    color: Color(0xfff5f5f5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
    );
  }
}
