import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  final String name;
  final String? logo;
  final List actions;
  const DrawerContent({
    super.key,
    required this.actions,
    required this.logo,
    required this.name  
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Column(
                children: [
                  if(logo!=null && logo!.isNotEmpty)
                  Container(
                    width: 75,
                    height: 75,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200), 
                      image: logo!=null && logo!.isNotEmpty ? DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(logo!)): null),
                  ),

                  Text(name, style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.white
                  ))
                ],
              ),
            ),
          ),
          ...actions.map((e) => ListTile(
            title: Text(e.toString()),
            onTap: () {
            },
          ),),
        ],
      ),
    );
  }
}