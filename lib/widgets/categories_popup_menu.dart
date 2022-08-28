import 'package:flutter/material.dart';

import '../pages/design_page.dart';
import '../pages/projects_page.dart';

class CategoriesPopup extends StatelessWidget {
  final String title;
  final double widthTitle;
  CategoriesPopup({
    Key? key,required this.title, required this.widthTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      iconSize: widthTitle,
      icon: Row(
        children: [
          Text(title,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15),),
          SizedBox(width: 10,),
          Icon(Icons.arrow_drop_down,size: 15,color: Colors.white,),
        ],
      ),
      onSelected: (String result) {
        switch (result) {
          case 'Design':
            Navigator.pushNamed(context, DesignPage.routeName);
            break;
          case 'Projects':
            Navigator.pushNamed(context, ProjectsPage.routeName);
            break;
          default:
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Design',
          child: ListTile(
            title: Text('Design'),
            trailing: SizedBox.shrink(),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'Projects',
          child: ListTile(
            title: Text('Projects'),
            trailing: SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}