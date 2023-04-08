import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {

  final List testimonials;
  const Testimonial({
    super.key,
    required this.testimonials  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: CarouselSlider(
      options: CarouselOptions(
        height: 150,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: testimonials.map((text) {
        return Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
                Text(
                  text["content"],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 12,),
                Text(
                  "- ${text["userName"]}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
            ],
          ),
        );
      }).toList(),
    ),
    );
  }
}