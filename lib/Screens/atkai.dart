import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  static const _bgColor = Color(0xff020B17);
  static const _appBarColor = Color(0xff222222);
  static const _containerColor = Color(0xff05203D);
  static const _textColor = Color(0xfff5f5f5);
  static const _buttonBgColor = Color(0xfff5f5f5);
  static const _buttonTextColor = Color(0xff222222);
  //static const _dividerColor = Color(0xffe0e0e0);

  @override
  Widget build(BuildContext context) {
    final infoItems = [
      _InfoItem(Icons.badge, "Membership ID"),
      _InfoItem(Icons.subscriptions, "My Subscription"),
      _InfoItem(Icons.settings, "Settings", onTap: () {}),
      _InfoItem(Icons.article, "Terms & Conditions"),
      _InfoItem(Icons.manage_accounts, "Account Management"),
      _InfoItem(Icons.privacy_tip, "Privacy Policy"),
    ];

    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () => Navigator.pop(context),
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
        backgroundColor: _appBarColor,
        toolbarHeight: 52,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              color: _containerColor,
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
                              color: _textColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "+977-9865134421",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: _textColor,
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
                        backgroundColor: _buttonBgColor,
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
                          color: _buttonTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            ...infoItems.map((item) => _InfoRow(item)),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _InfoItem {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  const _InfoItem(this.icon, this.title, {this.onTap});
}

class _InfoRow extends StatelessWidget {
  final _InfoItem item;
  const _InfoRow(this.item);

  static const _textColor = Color(0xfff5f5f5);
  static const _dividerColor = Color(0xffe0e0e0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: _dividerColor, width: 0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FaIcon(item.icon, color: _textColor, size: 24),
              const SizedBox(width: 10),
              Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: _textColor,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right, color: Colors.grey),
            onPressed: item.onTap ?? () {},
          ),
        ],
      ),
    );
  }
}

// ///
// //import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// // 1. Riverpod Provider
// final showCardProvider = StateProvider<bool>((ref) => true);

// // 2. Stateless App
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ComingSoonLayout(),
//     );
//   }
// }

// // 3. Layout that uses Riverpod's ConsumerWidget
// class ComingSoonLayout extends ConsumerWidget {
//   const ComingSoonLayout({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final showCard = ref.watch(showCardProvider);

//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: showCard
//           ? ComingSoonCard(
//               onClose: () => ref.read(showCardProvider.notifier).state = false,
//             )
//           : const SizedBox.shrink(),
//     );
//   }
// }

// // 4. ComingSoonCard logic remains mostly unchanged
// class ComingSoonCard extends StatefulWidget {
//   final VoidCallback onClose;

//   const ComingSoonCard({super.key, required this.onClose});

//   @override
//   State<ComingSoonCard> createState() => _ComingSoonCardState();
// }

// class _ComingSoonCardState extends State<ComingSoonCard> with SingleTickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     vsync: this,
//     duration: const Duration(milliseconds: 700),
//   )..forward();

//   late final Animation<Offset> _animation = Tween<Offset>(
//     begin: const Offset(0, 1),
//     end: Offset.zero,
//   ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

//   void _closeCard() {
//     _controller.reverse().then((_) => widget.onClose());
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: SlideTransition(
//         position: _animation,
//         child: Container(
//           width: 440,
//           height: 324,
//           padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//           decoration: const BoxDecoration(
//             color: Color(0xff222222),
//             borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//           ),
//           child: Stack(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: Text(
//                           "COMING SOON",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 40,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.close, color: Color(0xffe8ae29), size: 24),
//                         onPressed: _closeCard,
//                         tooltip: "Close",
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   const Text("25", style: TextStyle(color: Color(0xffE8AE29), fontSize: 45, fontWeight: FontWeight.w700)),
//                   const Text("LAKH", style: TextStyle(color: Color(0xffE8AE29), fontSize: 45, fontWeight: FontWeight.w700, height: 1.0)),
//                   const Text("Members remaining", style: TextStyle(color: Color(0xffE8AE29), fontSize: 16)),
//                   const SizedBox(height: 10),
//                   const SizedBox(
//                     width: 256,
//                     child: Text(
//                       "Book purchases will be unlocked once our community reaches 20 lakh members.",
//                       style: TextStyle(color: Color(0xfff5f5f5), fontSize: 14),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 right: -10,
//                 bottom: -25,
//                 child: IgnorePointer(
//                   child: Image.asset(
//                     'assets/images/coming_soon/people.png',
//                     width: 230,
//                     height: 325,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
