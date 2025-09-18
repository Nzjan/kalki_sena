// sliding_image_widget.dart
import 'package:flutter/material.dart';

class SlidingImageWidget extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;

  const SlidingImageWidget({
    super.key,
    required this.imagePath,
    this.width = 291,
    this.height = 231,
  });

  @override
  State<SlidingImageWidget> createState() => _SlidingImageWidgetState();
}

class _SlidingImageWidgetState extends State<SlidingImageWidget>
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
      begin: const Offset(0, -1), // Slide from above its container
      end: Offset.zero,
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
    return Center(
      child: SizedBox(
        height: widget.height,
        child: ClipRect(
          child: SlideTransition(
            position: _animation,
            child: Image.asset(
              widget.imagePath,
              width: widget.width,
              height: widget.height,
            ),
          ),
        ),
      ),
    );
  }
}
