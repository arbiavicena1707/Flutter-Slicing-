import 'package:flutter/material.dart';

class NavigationpopMyWidget extends StatelessWidget {
  NavigationpopMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go Back (pop)'),
            ),
          ],
        ),
      ),
    );
  }
}
