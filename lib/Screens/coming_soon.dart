import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComingSoonLayout(),
    );
  }
}

class ComingSoonLayout extends StatefulWidget {
  const ComingSoonLayout({super.key});

  @override
  State<ComingSoonLayout> createState() => _ComingSoonLayoutState();
}

class _ComingSoonLayoutState extends State<ComingSoonLayout> {
  bool _showCard = true;

  void _closeLayout() => setState(() => _showCard = false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:
          _showCard
              ? ComingSoonCard(onClose: _closeLayout)
              : const SizedBox.shrink(),
    );
  }
}

class ComingSoonCard extends StatefulWidget {
  final VoidCallback onClose;

  const ComingSoonCard({super.key, required this.onClose});

  @override
  State<ComingSoonCard> createState() => _ComingSoonCardState();
}

class _ComingSoonCardState extends State<ComingSoonCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  )..forward();

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(0, 1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

  void _closeCard() {
    _controller.reverse().then((_) => widget.onClose());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SlideTransition(
        position: _animation,
        child: Container(
          width: 440,
          height: 324,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          decoration: const BoxDecoration(
            color: Color(0xff222222),
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "COMING SOON",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xffe8ae29),
                          size: 24,
                        ),
                        onPressed: _closeCard,
                        tooltip: "Close",
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "25",
                    style: TextStyle(
                      color: Color(0xffE8AE29),
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    "LAKH",
                    style: TextStyle(
                      color: Color(0xffE8AE29),
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                  const Text(
                    "Members remaining",
                    style: TextStyle(color: Color(0xffE8AE29), fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 256,
                    child: Text(
                      "Book purchases will be unlocked once our community reaches 20 lakh members.",
                      style: TextStyle(color: Color(0xfff5f5f5), fontSize: 14),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: -10,
                bottom: -25,
                child: IgnorePointer(
                  child: Image.asset(
                    'assets/images/coming_soon/people.png',
                    width: 230,
                    height: 325,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
