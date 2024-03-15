import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String title1 = arg['title'];
    final String image1 = arg['image'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image1),
            ),
            const SizedBox(height: 30),
            Text(title1)
          ],
        ),
      ),
    );
  }
}
