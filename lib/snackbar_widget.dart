import 'package:flutter/material.dart';

class BottomsheetMyWidget extends StatelessWidget {
  BottomsheetMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Your order was placed!'),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.blue,
                                content: Text('Your Request is successfull'),
                              ),
                            );
                          },
                          child: const Text('Open Snackbar'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open BottomSheet'),
        ),
      ),
    );
  }
}
