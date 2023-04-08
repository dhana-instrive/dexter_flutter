import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String copyright;
  final String link1;
  final String link2;

  const Footer({
    super.key,
    required this.copyright,
    required this.link1,
    required this.link2  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      color: Theme.of(context).primaryColor,
      child: Text("@ Powered by $link1 & $link2", style: Theme.of(context).textTheme.bodySmall!.copyWith(
        fontSize: 12
      ),),
    );
  }
}