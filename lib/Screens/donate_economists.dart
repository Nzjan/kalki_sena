import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020B17),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        title: const Text(
          "Donate to Economists",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xfff5f5f5),
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'SFPro',
          ),
        ),
        centerTitle: true, // ✅ makes text exactly in center
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
              style: TextStyle(
                color: Color(0xfff5f5f5),
                fontSize: 14,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 24),

            // Buttons
            _buildActionButton(
              context,
              icon: Icons.volunteer_activism,
              text: "१ रुपैयाँ १५ भाग बनाउने रोक अभियान ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              context,
              icon: Icons.medical_services,
              text:
                  "देशको अर्थ व्यवस्था ICU बाट निकाल्न पैसा को डाक्टर ( अर्थ शास्त्री ) लाई आर्थिक सहयोग गर्नुहोस् ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              context,
              icon: Icons.facebook,
              text: "हाम्रो फेसबुक पेज लाइक गर्नुहोस् ।",
            ),
            const SizedBox(height: 12),

            _buildActionButton(
              context,
              icon: Icons.youtube_searched_for,
              text: "हाम्रो युटुब च्यानल लाइक गर्नुहोस् ।",
            ),
          ],
        ),
      ),
    );
  }

  // Reusable button widget
  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String text,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff3087e5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        icon: Icon(icon, color: Colors.white),
        label: Flexible(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
