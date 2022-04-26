import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xFFFF5656),
      child: InkWell(
        highlightColor: Colors.white.withOpacity(0.2),
        splashColor: Colors.white.withOpacity(0.2),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(21),
          child: const Text(
            'Book Now',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
