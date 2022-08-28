import 'package:flutter/material.dart';

class EducationPostBuild extends StatefulWidget {
  String img;
  String title;
  String year;
  String address;
  String text;
  bool isReverse;
  EducationPostBuild({
    Key? key,
    required this.text,
    required this.title,
    required this.year,
    required this.address,
    required this.img,
    required this.isReverse,
  }) : super(key: key);

  @override
  State<EducationPostBuild> createState() => _EducationPostBuildState();
}

class _EducationPostBuildState extends State<EducationPostBuild> {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    if(widget.isReverse && MediaQuery.of(context).size.width>1300){
      list = [buildColumn(), buildImage(),];
    }
    else{
      list = [buildImage(), buildColumn(),];
    }



    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 6,
        vertical: 30,
      ),
      child:
      ((){
        if(MediaQuery.of(context).size.width>1300){
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list,
          );
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: list,
        );
      }())
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600)),
        Text(widget.year,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w300)),
        Text(widget.address,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
        Divider(color: Colors.black,thickness: 0.2,),
        Text(widget.text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
      ],
    );
  }

  Container buildImage() {
    return Container(
      constraints: BoxConstraints(
        minHeight: 180, //minimum height
        maxWidth: 422,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.img,scale: 1.3),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
