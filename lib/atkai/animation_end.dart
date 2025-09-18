import 'package:flutter/material.dart';

/// This widget contains only the animation (for reuse)
class EndPageBody extends StatefulWidget {
  final bool startAnimation; // control when to start animation
  const EndPageBody({super.key, this.startAnimation = false});

  @override
  State<EndPageBody> createState() => _EndPageBodyState();
}

class _EndPageBodyState extends State<EndPageBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, -1), // Slide from top
      end: const Offset(0, 0), // Final position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    // Start animation only if startAnimation is true
    if (widget.startAnimation) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(covariant EndPageBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Start animation if startAnimation changed from false → true
    if (!oldWidget.startAnimation && widget.startAnimation) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        'assets/images/coming_soon/close.png',
        width: 291,
        height: 231,
      ),
    );
  }
}

/// Full EndPage with Scaffold + AppBar
class EndPage extends StatelessWidget {
  const EndPage({super.key});

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
          "Do national and in college/university survey",
          style: TextStyle(
            color: Color(0xfff5f5f5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'SFPro',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff020B17),
        toolbarHeight: 64,
      ),
      body: const Align(
        alignment: Alignment.topCenter,
        child: EndPageBody(
          startAnimation: true,
        ), // Start immediately in full page
      ),
    );
  }
}
