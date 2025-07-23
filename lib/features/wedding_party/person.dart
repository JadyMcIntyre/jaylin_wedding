import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key, required this.name, required this.imagePath, required this.description});
  final String name, description, imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CircleAvatar(radius: 50, child: Icon(Icons.person)),
        ),
        Text(name, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(description, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
