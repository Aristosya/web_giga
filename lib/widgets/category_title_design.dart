import 'package:flutter/material.dart';

class CategoryTitleDesign extends StatelessWidget {
  String title;

  CategoryTitleDesign({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 80,bottom: 50.0),
      child: Column(
        children: [
          Text('Category',style: TextStyle(color: Color(0xff929393),fontSize: 16, fontWeight: FontWeight.w400),),
          Text(title,style: TextStyle(color: Colors.black,fontSize: 64, fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}