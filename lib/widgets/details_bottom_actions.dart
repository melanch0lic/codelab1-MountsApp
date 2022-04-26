import 'package:flutter/material.dart';

import 'book_now_button.dart';

class DetailsBottomActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: BookNowButton(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: const Color(0xFFFF5656), width: 2)),
            child: const Icon(Icons.turned_in_not,
                color: Color(0xFFFF5656), size: 25),
          ),
        ],
      ),
    );
  }
}
