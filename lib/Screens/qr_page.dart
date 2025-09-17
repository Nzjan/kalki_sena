import 'package:flutter/material.dart';
import 'package:notes/main.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  static const String qrCodeUrl =
      'https://upload.wikimedia.org/wikipedia/commons/8/8e/QR_code_for_QRpedia.png';

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

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
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
        title: const Text("Refer A Friend", style: appBarTitleStyle),
        centerTitle: true,
        backgroundColor: const Color(0xff020B17),
        toolbarHeight: 64,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: QrPage.bodyTextStyle,
                children: [
                  const TextSpan(text: "Earn "),
                  TextSpan(
                    text: "₹50",
                    style: const TextStyle(color: Color(0xffE8AE29)),
                  ),
                  const TextSpan(text: " on every membership referral and "),
                  TextSpan(
                    text: "₹100",
                    style: const TextStyle(color: Color(0xffE8AE29)),
                  ),
                  const TextSpan(text: " on every book referral!"),
                ],
              ),
            ),

            const SizedBox(height: 24),
            SizedBox(
              width: 282,
              height: 289,
              child: Image.network(
                qrCodeUrl,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        value:
                            loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                      ),
                    ),
                  );
                },
                errorBuilder:
                    (context, error, stackTrace) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.error, color: Colors.red, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Failed to load QR code',
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    imagePath: 'assets/images/qr_page/share.png',
                    text: "Share",
                    backgroundColor: const Color(0xffE8AE29),
                    textColor: Colors.black,
                    height: 54,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: _buildActionButton(
                    imagePath: 'assets/images/qr_page/download.png',
                    text: "Download QR",
                    backgroundColor: const Color(0xff0C4D92),
                    textColor: Colors.white,
                    height: 54,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required String imagePath,
    required String text,
    required VoidCallback onTap,
    Color backgroundColor = const Color(0xff0C4D92),
    Color textColor = Colors.white,
    double height = 54,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 16, height: 16, fit: BoxFit.contain),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                text,
                style: buttonTextStyle.copyWith(color: textColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
