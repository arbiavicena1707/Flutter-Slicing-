import 'package:flutter/material.dart';

class DrawerMyWidget extends StatelessWidget {
  const DrawerMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: FlutterLogo(size: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.grey),
                  accountName: Text(
                    'Sabrina',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    'sabrina.dev@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {
                  // Add functionality here
                },
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}
