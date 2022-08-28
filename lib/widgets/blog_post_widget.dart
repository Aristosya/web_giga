import 'package:flutter/material.dart';
import 'dart:js' as js;

class BlogPost extends StatefulWidget {
  String title;
  String by;
  String img;
  String text;
  bool isCV;
  BlogPost({
    Key? key,
    required this.title,
    required this.by,
    required this.img,
    this.text= 'Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit proident dolor nulla sed commodo est ad minim elit reprehenderit nisi officia aute incididunt velit sint in aliqua cillum in consequat consequat in culpa in anim.',
    this.isCV = false,
  }) : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  var colorLineHover = Colors.white;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: EdgeInsets.fromLTRB(34, 28, 34, 28),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 340,
                child: Image(image: NetworkImage(widget.img),),
              ),
              SizedBox(height: 24,),
              Text(widget.title, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 21),textAlign: TextAlign.center,),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By: ',style:TextStyle(fontSize: 14),textAlign: TextAlign.center),
                  Container(width:230 , child: Text(widget.by,style:TextStyle(fontSize: 14, color: Colors.grey),textAlign: TextAlign.center, softWrap: true,)),
                ],
              ),
              SizedBox(height: 24,),
              Text(widget.text,style: TextStyle(fontSize: 15, height: 2
              ),textAlign: TextAlign.center),
              SizedBox(height: 24,),
              InkWell(
                hoverColor: Colors.transparent,
                  onTap: () => {
                  if (widget.isCV){js.context.callMethod('open', ['https://cv-it.ru/roman_chernogorov/'])}
                  },
                  onHover: ((val){setState((){
                    if (val){
                      colorLineHover = Colors.black;
                    }
                    else{
                      colorLineHover = Colors.white;
                    }
                  });}),
                  child: Text('READ MORE')
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 1,
                width: 50,
                color: colorLineHover,
              )
            ],
          ),
    );
  }
}
