import 'package:flutter/material.dart';

class SlideText extends StatelessWidget {
  const SlideText({Key? key, required this.slidingTextAnimation})
    : super(key: key);
  final Animation<Offset> slidingTextAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingTextAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingTextAnimation,
          child: Text(
            'All Free Books In One Place',
            style: TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
