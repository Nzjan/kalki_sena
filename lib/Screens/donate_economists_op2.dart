import 'package:flutter/material.dart';

class DonatePageOP2 extends StatelessWidget {
  const DonatePageOP2({super.key});

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
          "Sign up to drive with Kalki Sena Ride",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff020B17),
        toolbarHeight: 64,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Driver Benefits",
                        style: DonatePageOP2.bodyTextStyle,
                      ),
                    ),

                    // Item 1
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("1.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "Driver Benefits: This section will describe the main benefits of signing up as a driver for Kalki Sena Ride, including earnings, incentives, and flexible schedule.",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Item 2
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("2.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "स्मार्ट करेन्सी के हो? नेपालका १०० वटा भन्दा बढी अर्थशास्त्रीहरुद्वारा पूर्ण रूपमा सैद्धान्तिक छलफलबाट समर्थित नयाँ प्रविधि जसले ३–४ वर्षभित्रमा नेपाललाई विश्वकै पहिलो १००% क्यासलेस र विश्वकै पहिलो सामाजिक र राजनीतिक रूपमा ९०% भ्रष्टाचारमुक्त राष्ट्र बनाउनेछ। यस प्रविधिमा पैसामाथि बारकोड राखिनु पर्छ र प्रत्येक परिवारका लागि १ देखि १००० सम्मका सबै खाले अलग-अलग नम्बरको करेन्सी हुनेछ। बारकोड प्रविधिको कारणले गाउँका पढ्न-लेख्न नजान्ने मान्छेले पनि नगदविहीन खरिद-बिक्री बिना इन्टरनेट र बिना फोन गर्न पाउनेछ। एउटा पाइलट प्रोजेक्ट गर्न ५–७ वटा दुर्गम गाउँमा थोरै बारकोड भएको नगद छापेर पुराना चलनचल्तीका पैसाहरू नहटाई पूरै रोडम्याप तयार गर्न सकिन्छ।",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Item 3
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("3.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "एन्टिबायोटिक रेसिस्टेन्स: ब्याक्टेरिया (bacteria) लगायत विभिन्न रोगजनक जीवाणुको कारणले औषधि पूर्ण रूपमा असर नपुग्ने, त्यसबाट संक्रमित मानिसको जीवन संकटमा पर्नु। यसमा नियन्त्रणको लागि राष्ट्रिय स्तरमा नीति बनाउने र प्रयोगात्मक अनुसन्धान अघि बढाउने।",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Driver Benefits",
                        style: DonatePageOP2.bodyTextStyle,
                      ),
                    ),

                    // Item 1
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("1.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "Driver Benefits: This section will describe the main benefits of signing up as a driver for Kalki Sena Ride, including earnings, incentives, and flexible schedule.",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Item 2
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("2.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "स्मार्ट करेन्सी के हो? नेपालका १०० वटा भन्दा बढी अर्थशास्त्रीहरुद्वारा पूर्ण रूपमा सैद्धान्तिक छलफलबाट समर्थित नयाँ प्रविधि जसले ३–४ वर्षभित्रमा नेपाललाई विश्वकै पहिलो १००% क्यासलेस र विश्वकै पहिलो सामाजिक र राजनीतिक रूपमा ९०% भ्रष्टाचारमुक्त राष्ट्र बनाउनेछ। यस प्रविधिमा पैसामाथि बारकोड राखिनु पर्छ र प्रत्येक परिवारका लागि १ देखि १००० सम्मका सबै खाले अलग-अलग नम्बरको करेन्सी हुनेछ। बारकोड प्रविधिको कारणले गाउँका पढ्न-लेख्न नजान्ने मान्छेले पनि नगदविहीन खरिद-बिक्री बिना इन्टरनेट र बिना फोन गर्न पाउनेछ। एउटा पाइलट प्रोजेक्ट गर्न ५–७ वटा दुर्गम गाउँमा थोरै बारकोड भएको नगद छापेर पुराना चलनचल्तीका पैसाहरू नहटाई पूरै रोडम्याप तयार गर्न सकिन्छ।",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Item 3
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("3.", style: bodyTextStyle),
                        const SizedBox(width: 8),
                        Expanded(
                          child: const Text(
                            "एन्टिबायोटिक रेसिस्टेन्स: ब्याक्टेरिया (bacteria) लगायत विभिन्न रोगजनक जीवाणुको कारणले औषधि पूर्ण रूपमा असर नपुग्ने, त्यसबाट संक्रमित मानिसको जीवन संकटमा पर्नु। यसमा नियन्त्रणको लागि राष्ट्रिय स्तरमा नीति बनाउने र प्रयोगात्मक अनुसन्धान अघि बढाउने।",
                            style: bodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Verify Button
            Container(
              width: double.infinity,
              height: 54,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3087e5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Pre-Verify",
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
    );
  }
}
