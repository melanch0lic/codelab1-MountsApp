import 'package:flutter/material.dart';

import 'landing_page.dart';

const Color mainColor = Color(0xFFFF5656);

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
        color: mainColor,
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Icon(Icons.terrain, color: Colors.white, size: 90),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
