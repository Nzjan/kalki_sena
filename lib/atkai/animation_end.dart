import 'package:flutter/material.dart';

class EndPage extends StatefulWidget {
  const EndPage({super.key});

  @override
  State<EndPage> createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    // Calculate the starting offset based on image height
    double imageHeight = 231.0; // Image height
    double startOffset = imageHeight; // Start below the screen

    _animation = Tween<Offset>(
      begin: Offset(0, startOffset), // Start below the screen
      end: Offset(
        0,
        0,
      ), // End at the position where the top part of the image is visible
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xfff5f5f5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontFamily: 'SFPro',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff020B17),
        toolbarHeight: 64,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SlideTransition(
          position: _animation,
          child: Image.asset(
            'assets/images/coming_soon/close.png',
            width: 291,
            height: 231,
          ),
        ),
      ),
    );
  }
}
