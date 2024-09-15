import 'package:flutter/material.dart';

import 'settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => const Settings()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
