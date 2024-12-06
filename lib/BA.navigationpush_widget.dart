import 'package:flutter/material.dart';

class NavigationpushMyWidget extends StatelessWidget {
  NavigationpushMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const NavigationPop();
                  },
                ));
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationPop extends StatelessWidget {
  const NavigationPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // This pops the current page from the navigation stack
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
