import 'package:flutter/material.dart';

class AspectRatioMyWidget extends StatelessWidget {
   AspectRatioMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AspectRatio(
          aspectRatio: 180 / 240,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}