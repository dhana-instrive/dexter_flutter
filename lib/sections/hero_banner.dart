import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  final String title;
  final String desc;
  final String bgImage;
  final String btnTxt;

  const HeroBanner({
    super.key,
    required this.bgImage,
    required this.btnTxt,
    required this.desc,
    required this.title  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.6,
          image: NetworkImage(bgImage))
      ),
      child: Column(children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 20,),
        Text(desc, style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Colors.black
        ), textAlign: TextAlign.center,),
        const SizedBox(height: 32,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(45), // fromHeight use double.infinity as width and 40 is the height
          ),
          onPressed: (){}, 
          child: Text(btnTxt)
        )
      ]),
    );
  }
}