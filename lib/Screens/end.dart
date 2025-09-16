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

    _animation = Tween<Offset>(
      begin: const Offset(0, -1), // Slide from top
      end: const Offset(0, 0), // To original position
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
        title: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
          ), // Add left/right padding
          child: Text(
            "Do national and in college/university survey",
            style: TextStyle(
              color: Color(0xfff5f5f5),
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontFamily: 'SFPro',
            ),
          ),
        ),
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
