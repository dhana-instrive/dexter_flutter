import 'package:flutter/material.dart';

class HeroBanner extends StatefulWidget {
  const HeroBanner({super.key});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Victory", style: TextStyle(color: Colors.black),),),
    );
  }
}