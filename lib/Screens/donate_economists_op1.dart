import 'package:flutter/material.dart';

class DonatePageOP1 extends StatelessWidget {
  const DonatePageOP1({super.key});

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
          "१ देखि २५ भित्र बनाउने रोड म्याप :",
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
            // Item 1
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side: number
                const Text("1.", style: DonatePageOP1.bodyTextStyle),
                const SizedBox(width: 8), // space between number and text
                // Right side: expanded text
                Expanded(
                  child: const Text(
                    "कल्किज्म रिसर्च एण्ड ट्रेनिङ सेन्टर के हो? : एउटा सामाजिक, आर्थिक र स्वास्थ्य नीतिमा आधारित अनुसन्धान केन्द्र हो, जसको उद्देश्य सबै नेपालीलाई स्वास्थ्य, शिक्षा र कानूनी सेवा पूर्ण रूपमा निःशुल्क बनाउने नीति निर्माण गर्ने। नेपालको आर्थिक व्यवस्था सुधार गर्ने \"कल्किवाद\" नामक वैकल्पिक अर्थनीति र राजतन्त्र, गणतन्त्रको भन्दा राम्रो राजनीति: ज्ञानतन्त्र नीति को आविष्कार गर्ने, स्मार्ट करेन्सी जस्ता नवीन प्रणालीमार्फत भ्रष्टाचार, नक्कली पैसा र आर्थिक अन्यायको अन्त्य गर्ने, एन्टिबायोटिक रेसिस्टेन्स र जनस्वास्थ्य संकट रोक्न लाखौं मानिसको जीवन जोगाउने नीति बनाउने। यो संस्था देशभित्रका १५+ सरकारी क्याम्पसका १०० भन्दा बढी अर्थशास्त्री र विशेषज्ञहरूले अनुमोदन गरेर अस्तित्वमा आएको छ।",
                    style: DonatePageOP1.bodyTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Item 2
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("2.", style: DonatePageOP1.bodyTextStyle),
                const SizedBox(width: 8),
                Expanded(
                  child: const Text(
                    "स्मार्ट करेन्सी के हो? नेपालका १०० वटा भन्दा बढी अर्थशास्त्रीहरुद्वारा पूर्ण रूपमा सैद्धान्तिक छलफलबाट समर्थित नयाँ प्रविधि जसले ३–४ वर्षभित्रमा नेपाललाई विश्वकै पहिलो १००% क्यासलेस र विश्वकै पहिलो सामाजिक र राजनीतिक रूपमा ९०% भ्रष्टाचारमुक्त राष्ट्र बनाउनेछ। यस प्रविधिमा पैसामाथि बारकोड राखिनु पर्छ र प्रत्येक परिवारका लागि १ देखि १००० सम्मका सबै खाले अलग-अलग नम्बरको करेन्सी हुनेछ। बारकोड प्रविधिको कारणले गाउँका पढ्न-लेख्न नजान्ने मान्छेले पनि नगदविहीन खरिद-बिक्री बिना इन्टरनेट र बिना फोन गर्न पाउनेछ। एउटा पाइलट प्रोजेक्ट गर्न ५–७ वटा दुर्गम गाउँमा थोरै बारकोड भएको नगद छापेर पुराना चलनचल्तीका पैसाहरू नहटाई पूरै रोडम्याप तयार गर्न सकिन्छ।",
                    style: DonatePageOP1.bodyTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Item 3
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("3.", style: DonatePageOP1.bodyTextStyle),
                const SizedBox(width: 8),
                Expanded(
                  child: const Text(
                    "एन्टिबायोटिक रेसिस्टेन्स: ब्याक्टेरिया (bacteria) लगायत विभिन्न रोगजनक जीवाणुको कारणले औषधि पूर्ण रूपमा असर नपुग्ने, त्यसबाट संक्रमित मानिसको जीवन संकटमा पर्नु। यसमा नियन्त्रणको लागि राष्ट्रिय स्तरमा नीति बनाउने र प्रयोगात्मक अनुसन्धान अघि बढाउने।",
                    style: DonatePageOP1.bodyTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
