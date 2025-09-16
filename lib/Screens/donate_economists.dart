import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  static const TextStyle appBarTitleStyle = TextStyle(
    color: Color(0xfff5f5f5),
    fontWeight: FontWeight.w500,
    fontSize: 18,
    fontFamily: 'SFPro',
  );

  static const TextStyle bodyTextStyle = TextStyle(
    color: Color(0xfff5f5f5),
    fontSize: 14,
    height: 1.4,
    fontFamily: 'SFPro',
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'SFPro',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020B17),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        title: const Text("Donate to Economists", style: appBarTitleStyle),
        centerTitle: true,
        backgroundColor: const Color(0xff020B17),
        toolbarHeight: 64,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Intro Text
            const Text(
              "Economists are one of the least financially stable intellectual in country. Foreigner are so powerful they can destroy their livelyhood and job if economists want to unite and make Nepal vishwaguru by making Nepali one rupees = Indian 25 rupees. Only way they can unite is if 40-50 lakh nepali request them.\n\n"
              "Let's create history : help kalikism research and training center a non profit NGO to save 2 crore life in Nepal in next 50 years.",
              style: bodyTextStyle,
            ),
            const SizedBox(height: 24),

            // Buttons
            _buildActionButton(
              imagePath: 'assets/images/donate_page/like.png',
              text: "१ रुपैयाँ १५ भाग बनाउने रोक अभियान ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/first_aid.png',
              text:
                  "देशको अर्थ व्यवस्था ICU बाट निकाल्न पैसा को डाक्टर ( अर्थ शास्त्री ) लाई आर्थिक सहयोग गर्नुहोस् ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/fb.png',
              text: "हाम्रो फेसबुक पेज लाइक गर्नुहोस् ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/youtube.png',
              text: "हाम्रो युटुब च्यानल लाइक गर्नुहोस् ।",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({required String imagePath, required String text}) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff0C4D92),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left image + text
            Expanded(
              child: Row(
                children: [
                  Image.asset(
                    imagePath,
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      text,
                      style: DonatePage.buttonTextStyle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            // Right arrow icon
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
          ],
        ),
      ),
    );
  }
}
