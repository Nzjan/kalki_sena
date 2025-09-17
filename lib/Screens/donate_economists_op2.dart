import 'package:flutter/material.dart';

class DonatePageOP2 extends StatelessWidget {
  const DonatePageOP2({super.key});

  static const Color backgroundColor = Color(0xff020B17);
  static const TextStyle appBarTitleStyle = TextStyle(
    color: Color(0xfff5f5f5),
    fontWeight: FontWeight.w500,
    fontSize: 18,
    fontFamily: 'SFPro',
  );

  static const TextStyle bodyTextStyle = TextStyle(
    color: Color(0xfff5f5f5),
    fontSize: 16,
    fontFamily: 'SFPro',
  );

  static const TextStyle boldTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'SFPro',
  );

  Widget numberedItem(int number, InlineSpan content) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$number.", style: bodyTextStyle),
          const SizedBox(width: 8),
          Expanded(child: Text.rich(content)),
        ],
      ),
    );
  }

  Widget bulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("•", style: bodyTextStyle),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: bodyTextStyle)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: 64,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        title: const Text(
          "Sign up to drive with Kalki Sena Ride",
          style: appBarTitleStyle,
        ),
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
                    const Text("Driver Benefits:", style: bodyTextStyle),

                    // Benefit 1
                    numberedItem(
                      1,
                      const TextSpan(
                        children: [
                          TextSpan(
                            text: "१००% भाडा आफ्नो: ",
                            style: boldTextStyle,
                          ),
                          TextSpan(
                            text:
                                "ड्राइभरहरूले पिकअपदेखि ड्रपसम्मको सम्पूर्ण पैसा आफैं राख्नेछन्।",
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),

                    // Benefit 2
                    numberedItem(
                      2,
                      const TextSpan(
                        children: [
                          TextSpan(
                            text: "निःशुल्क क्लिनिक उपचार: ",
                            style: boldTextStyle,
                          ),
                          TextSpan(
                            text: "अधिकतम ५०० डलरसम्मको सुविधा (१००० होइन)।",
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),

                    // Benefit 3
                    numberedItem(
                      3,
                      const TextSpan(
                        children: [
                          TextSpan(
                            text: "प्रमोशनको जिम्मेवारी: ",
                            style: boldTextStyle,
                          ),
                          TextSpan(
                            text:
                                "ड्राइभरहरूले आफ्नै खर्चमा प्रचार–प्रसार गर्नुपर्नेछ।",
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),

                    // Benefit 4 - Sub-bullets
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("4.", style: bodyTextStyle),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "भविष्यका सुविधा:",
                                  style: bodyTextStyle,
                                ),
                                bulletItem(
                                  "२ वर्षपछि निःशुल्क अस्पताल उपचार (यदि अरू कुनै प्रतिस्पर्धी कम्पनी बाँकी रहेन भने)।",
                                ),
                                bulletItem(
                                  "५ वर्षपछि बच्चाहरूलाई निःशुल्क स्कुल र अस्पताल सुविधा (यदि केवल कल्कि सेना राइड मात्र बाँकी रहेमा)।",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Benefit 5 - Sub-bullets
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("5.", style: bodyTextStyle),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "सुरक्षा धितो:",
                                  style: bodyTextStyle,
                                ),
                                bulletItem(
                                  "बाइक चालकका लागि १०,००० रुपैयाँभन्दा कम।",
                                ),
                                bulletItem(
                                  "ट्याक्सी चालकका लागि २०,००० रुपैयाँभन्दा कम।",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    const Text("नयाँ प्रयास :", style: bodyTextStyle),

                    numberedItem(
                      1,
                      const TextSpan(
                        text:
                            "हाम्रो एप मा सरकार को नियम अनुसार प्रत्येक किलो मीटर मा कति चार्ज हुनु पर्छ त्यो देखाउन तपाईं को ट्याक्सी जस्तै मीटर राखिने छ त्यो एप को नाम हुन्छ कानून मीटर . हामी कानून मीटर को व्यवस्था ल्याएर सबै ड्राइभर लाई एक गर्ने छौ ड्राइभर एक हुने न हुने त्यो तपाईं को इच्छा I",
                        style: bodyTextStyle,
                      ),
                    ),

                    numberedItem(
                      2,
                      const TextSpan(
                        text:
                            "डाक्टर हरुको जीवन स्तर उकास्ने र ५० लाख भन्दा बढी नेपाली लाई मर्न बाट बचाउन हाम्रो क्लिनिक को मेम्बर लाई अहिले को पठाउ कै रेट लाग्ने छ जो मेम्बर छैन् उसलाई ट्याक्सी कानून मीटर को रेट लाग्ने छ I",
                        style: bodyTextStyle,
                      ),
                    ),

                    numberedItem(
                      3,
                      const TextSpan(
                        text:
                            "दैनिक खर्च घटाउने लक्ष्य: सबै ड्राइभरहरू एकजुट भएमा दैनिक खर्च ३५०० रुपैयाँबाट २५०० रुपैयाँमा ल्याउने अध्ययन गर्ने।",
                        style: bodyTextStyle,
                      ),
                    ),
                    numberedItem(
                      4,
                      const TextSpan(
                        text:
                            "आफ्नो गाडी चलाउने र ट्याक्सी साहु को गाडी चलाउने को कमाई प्रतेक ट्रिप मा बराबर हुने छ।  आफ्नो गाडी चलाउने को कमाई मा कुनै कमी आउने छैन I",
                        style: bodyTextStyle,
                      ),
                    ),
                    numberedItem(
                      5,
                      const TextSpan(
                        text:
                            "टिप्सको विकल्प: आफैं कार नभई दैनिक २५००–३५०० रुपैयाँ ट्याक्सी मालिकलाई तिरेर सवारी चलाउने ड्राइभरहरूका लागि एपमार्फत टिप्स लिन सक्ने व्यवस्था।",
                        style: bodyTextStyle,
                      ),
                    ),
                    numberedItem(
                      3,
                      const TextSpan(
                        text:
                            "भिन्न मूल्यको व्यवस्था: दैनिक ३०००–३५०० रुपैयाँ ट्याक्सी मालिकलाई तिर्ने ड्राइभरहरूका लागि विशेष प्रावधान राखिनेछ। "
                            "यस्ता ड्राइभरहरूको सम्मानजनक आम्दानी सुनिश्चित गर्न, "
                            "उनीहरू कति छन् र एकजुट हुन तयार छन् वा छैनन् भन्ने बुझ्न आवश्यक छ।",
                        style: bodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Pre-Verify Button
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
