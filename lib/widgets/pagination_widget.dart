import 'package:flutter/material.dart';

class Pagination extends StatelessWidget {
  const Pagination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildHoverTextButton(text: 'Prev',),
            SizedBox(width: 30,),
            BuildHoverTextButton(text: '1',),
            Container(
              width: 40,
              height: 40,
              color: Colors.black,
              child: Center(child: Text('2',style: TextStyle(color: Colors.white),)),
            ),
            BuildHoverTextButton(text: '3',),
            BuildHoverTextButton(text: '4',),
            BuildHoverTextButton(text: '5',),
            SizedBox(width: 30,),
            BuildHoverTextButton(text: 'Next',),
          ],
        ),
    );
  }
}

class BuildHoverTextButton extends StatefulWidget {
  String text;
  BuildHoverTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<BuildHoverTextButton> createState() => _BuildHoverTextButtonState();
}

class _BuildHoverTextButtonState extends State<BuildHoverTextButton> {
  var colorLineHover = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 40,
          height: 40,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 6,
                ),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => {},
                    onHover: ((val){setState((){
                      if (val){
                        colorLineHover = Colors.black;
                      }
                      else{
                        colorLineHover = Colors.white;
                      }
                    });}),
                    child: Text(widget.text)
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
          ),
        );
  }
}

























