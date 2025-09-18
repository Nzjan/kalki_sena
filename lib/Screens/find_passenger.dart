import 'package:flutter/material.dart';
import 'package:notes/Screens/donate_economists_op1.dart';

// Your DonatePage
class FindPassenger extends StatelessWidget {
  const FindPassenger({super.key});

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
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 16),
        ),
        title: const Text(
          "Find Taxi, Bike, or Passenger.",
          style: appBarTitleStyle,
        ),
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
              '''Many foreigner company offering taxi and motorcycle sewa is hurting Nepali drivers. Kalki Sena is a pure Nepali ride sewa company. Kalki Sena company will make sure 100% money from pick up to destination goes to drivers.
Also, Kalkiism Research and Training Center members with book purchases will get a discount on Kalki Sena ride.  

Help Nepali build Nepal.  

We will try not to make any profit. But if any profit comes, we will donate to economists 100%. We will not keep one rupee profit from this ride share company. If anyone can prove we are keeping profit from ride share, we will pay 1 million rupees prize to that person.  
Once the objective of economists are achieved, then only Kalki Sena will give profit to the owners.  

This service will be active after 4–6 months.''',
              style: bodyTextStyle,
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 24),

            _buildActionButton(
              imagePath: 'assets/images/donate_page/like.png',
              text: "Register as Driver",
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DonatePageOP1()),
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
                      style: FindPassenger.buttonTextStyle,
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
