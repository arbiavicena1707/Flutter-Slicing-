import 'package:flutter/material.dart';

class Rowss extends StatelessWidget {
  const Rowss({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0), // Padding kiri dan kanan
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          const Text(
            "Detail",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            iconSize: 32.0,
          ),
        ],
      ),
    );
  }
}