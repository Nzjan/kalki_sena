import 'package:flutter/material.dart';

class DonatePageOP3 extends StatelessWidget {
  const DonatePageOP3({super.key});

  static const Color backgroundColor = Color(0xff020B17);

  static const TextStyle headingStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: 'SFPro',
  );

  static const TextStyle bodyStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: 'SFPro',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          "सत्ययुग समाज पार्टी को भोट किन्नुहोस्.",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text.rich(
                TextSpan(
                  style: bodyStyle,
                  children: [
                    TextSpan(
                      text: "Satyayug samaj party :\n",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFPro',
                      ),
                    ),
                    TextSpan(
                      text:
                          "World's most smart, educated, and innovative political party because only economists, MBAs, and engineers are allowed to become ministers, MPs, and mayors respectively. "
                          "Others will not be allowed to enter the party without passing the knowledge test of the related field. "
                          "देश बनाउने काम इन्जिनियर र एम बी ए को तथा देश चलाउने काम अर्थशास्त्री को।",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Buy vote of Satyayug Samaj party for Rs 151. If not, go vote for other parties which will pay you money, Masu, Chiura to vote for them. "
                "We don't want your vote if you don't want to pay us Rs 151 donation. Also, we need a minimum of 40 lakh members first. "
                "Then only will we register the party and start taking your vote. Right now, this party doesn't exist. "
                "We need a minimum of 50 crore donation so that economists, MBAs, and engineers can quit other jobs and start educating Nepal on how to get free health, education, and legal services for an entire lifetime without insurance.",
                style: bodyStyle,
              ),
              SizedBox(height: 12),
              Text(
                "A medical byawasayi NRN (Jay Sah) from the USA wants to open a political party where he won't be allowed to take any minister, MP, or mayor position because he is a foreign citizen. "
                "He will only be able to fire members who go against the party manifesto. He is a medical byawasayi who is opening the party for the country, not for himself. "
                "All economists, engineers, and MBAs will be made to sign an agreement; if they go against the manifesto, every penny they received from the public will have to be returned with interest to the Satyayug Samaj Party.",
                style: bodyStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
