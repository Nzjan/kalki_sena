import 'package:flutter/material.dart';
import 'package:notes/Screens/donate_economists_op1.dart';
import 'package:notes/Screens/donate_economists_op2.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Page Three")),
    body: const Center(child: Text("Page Three")),
  );
}

class PageFour extends StatelessWidget {
  const PageFour({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Page Four")),
    body: const Center(child: Text("Page Four")),
  );
}

// Your DonatePage
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
            const Text(
              "Economists are one of the least financially stable intellectual in country. Foreigner are so powerful they can destroy their livelyhood and job if economists want to unite and make Nepal vishwaguru by making Nepali one rupees = Indian 25 rupees. Only way they can unite is if 40-50 lakh nepali request them.\n\n"
              "Let's create history : help kalikism research and training center a non profit NGO to save 2 crore life in Nepal in next 50 years.",
              style: bodyTextStyle,
            ),
            const SizedBox(height: 24),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/like.png',
              text: "१ रुपैयाँ १५ भाग बनाउने रोक अभियान ।",
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DonatePageOP1()),
                  ),
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/first_aid.png',
              text:
                  "देशको अर्थ व्यवस्था ICU बाट निकाल्न पैसा को डाक्टर ( अर्थ शास्त्री ) लाई आर्थिक सहयोग गर्नुहोस् ।",
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DonatePageOP2()),
                  ),
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/fb.png',
              text: "हाम्रो फेसबुक पेज लाइक गर्नुहोस् ।",
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PageThree()),
                  ),
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/youtube.png',
              text: "हाम्रो युटुब च्यानल लाइक गर्नुहोस् ।",
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PageFour()),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required String imagePath,
    required String text,
    required VoidCallback onTap, // Pass navigation callback
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: const Color(0xff0C4D92),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side: image + text
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
