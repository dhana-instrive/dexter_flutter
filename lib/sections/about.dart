import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const About({
    super.key,
    required this.title,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 20,),
          Text(text, style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.black
          ), textAlign: TextAlign.center,),
          const SizedBox(height: 24,),
          Container(
          padding: const EdgeInsets.all(24),
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.6,
              image: NetworkImage(image))
          ),)
        ],
    ));
  }
}