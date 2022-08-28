import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

import 'home_app_bar_widget.dart';

class HomeGalerey extends StatefulWidget {
  const HomeGalerey({
    Key? key,
  }) : super(key: key);




  @override
  State<HomeGalerey> createState() => _HomeGalereyState();
}

class _HomeGalereyState extends State<HomeGalerey> {
  List info = [['https://fluttercv-a27b5.web.app/bg1.jpg','CV Web', 'Roman Chernogorov','Project: Here you can find out about me!', ],['https://fluttercv-a27b5.web.app/bg2.jpg','Work', 'Juan Dela Cruz','Minimalism: The Art of Keeping It Simple.', ],['https://fluttercv-a27b5.web.app/bg3.jpg','Health, Lifestyle', 'Jane Doe','10 Reasons Why Being in Nature Is Good For You.', ]];
  var nowPage = 0;
  Color buttonColor1 = Colors.white;
  Color buttonColor2 = Colors.white;
  Color buttonArrowColor1 = Colors.black;
  Color buttonArrowColor2 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
          image: NetworkImage(info[nowPage][0]),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(backgroundColor: Color.fromRGBO(0, 0, 0, 0.1),isCenter: false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(bottom: (MediaQuery.of(context).size.height/4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: ((){
                            if ((MediaQuery.of(context).size.width/2 - 340) > 0){
                              return MediaQuery.of(context).size.width/2 -140;
                            }
                          }())
                          ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(info[nowPage][1], style : TextStyle(color: Colors.white)),
                                  SizedBox(width: 20,),
                                  Text('Posted by', style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5,),
                                  Text(info[nowPage][2], style : TextStyle(color: Colors.white)),
                                ],
                              ),
                              Text(
                                info[nowPage][3],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ((){
                                    if(MediaQuery.of(context).size.width> 1000){
                                      return 70.0;
                                    }
                                    else if(MediaQuery.of(context).size.width> 800){
                                      return 40.0;
                                    }
                                    else if(MediaQuery.of(context).size.width> 700){
                                      return 30.0;
                                    }
                                     return 25.0;
                                  }()),
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 50,),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: InkWell(
                                      onTap: ((){setState((){
                                        nowPage = 0;
                                      });}),
                                      child: Text('01', style: TextStyle(color: Colors.white, letterSpacing: 3),),
                                    ),
                                  ),
                                  ((){
                                    if(nowPage == 0){
                                      return Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                          color: Colors.white,
                                          width: 30,
                                          height: 1,
                                        ),
                                      );
                                    }
                                    return SizedBox.shrink();
                                  }()),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: InkWell(
                                      onTap: ((){setState((){
                                        nowPage = 1;
                                      });}),
                                      child: Text('02', style: TextStyle(color: Colors.white, letterSpacing: 3),),
                                    ),
                                  ),
                                  ((){
                                    if(nowPage == 1){
                                      return Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                          color: Colors.white,
                                          width: 30,
                                          height: 1,
                                        ),
                                      );
                                    }
                                    return SizedBox.shrink();
                                  }()),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: InkWell(
                                      onTap: ((){setState((){
                                        nowPage = 2;
                                      });}),
                                      child: Text('03', style: TextStyle(color: Colors.white, letterSpacing: 3),),
                                    ),
                                  ),
                                  ((){
                                    if(nowPage == 2){
                                      return Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                          color: Colors.white,
                                          width: 30,
                                          height: 1,
                                        ),
                                      );
                                    }
                                    return SizedBox.shrink();
                                  }()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: Text('Follow',
                                      style:
                                      TextStyle(color: Colors.white)),
                                ),
                                // Icon(Icons.ac_unit),
                                Container(
                                  padding: EdgeInsets.zero,
                                  margin: EdgeInsets.only(top: 18,bottom: 18,right: 2),
                                  width: 1,
                                  height: 36,
                                  color: Colors.white,
                                ),
                                IconButton(onPressed: () => {js.context.callMethod('open', ['https://www.facebook.com/walomisrael'])}, icon: Icon(Icons.facebook, color: Colors.white,)),
                                IconButton(onPressed: () => {js.context.callMethod('open', ['https://api.whatsapp.com/send/?phone=87783586035&text=urlencodedtext'])}, icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white), ),
                                IconButton(onPressed: () => {js.context.callMethod('open', ['https://www.instagram.com/walomisrael/'])}, icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white,)),
                                IconButton(onPressed: () => {js.context.callMethod('open', ['https://github.com/Aristosya'])}, icon: FaIcon(FontAwesomeIcons.github, color: Colors.white,)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onHover: ((val){setState((){
                            if (val){
                              buttonColor1 = Colors.black;
                              buttonArrowColor1 = Colors.white;
                            }
                            else{
                              buttonColor1 = Colors.white;
                              buttonArrowColor1 = Colors.black;
                            }
                          });}),
                          onTap: ((){setState((){
                            if(nowPage == 0){
                              nowPage = 2;
                            }
                            else{
                              nowPage--;
                            }
                          });}),
                          child: Container(
                            color: buttonColor1,
                            width: 64,
                            height: 56,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: buttonArrowColor1,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onHover: ((val){setState((){
                            if (val){
                              buttonColor2 = Colors.black;
                              buttonArrowColor2 = Colors.white;
                            }
                            else{
                              buttonColor2 = Colors.white;
                              buttonArrowColor2 = Colors.black;
                            }
                          });}),
                          onTap: ((){setState((){
                            if(nowPage == 2){
                              nowPage = 0;
                            }
                            else{
                              nowPage++;
                            }
                          });}),
                          child: Container(
                            color: buttonColor2,
                            width: 64,
                            height: 56,
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: buttonArrowColor2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

