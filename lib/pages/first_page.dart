import 'package:flutter/material.dart';
import 'package:laza_shop/model/model.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    List argumentKeldi = arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Paage'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/second', arguments: {
            'title': argumentKeldi[0].title,
            'image': argumentKeldi[0].image,
          }),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage(argumentKeldi[0].image),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                argumentKeldi[0].title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Salom Adham'),
                      backgroundColor: Colors.green,
                      action: SnackBarAction(
                        label: 'Yes',
                        onPressed: () {},
                        textColor: Colors.red,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  );
                },
                child: const Text('SnackBar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
