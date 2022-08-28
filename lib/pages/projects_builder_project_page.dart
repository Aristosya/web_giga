import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/blog_post_widget.dart';

class Projects extends StatelessWidget {
  Projects({
    Key? key,
  }) : super(key: key);


  int crossAxisCount = 1;
  List posts = [
    BlogPost(title: 'Clothing store', by: 'Roman Chernogorov', img: 'https://fluttercv-a27b5.web.app/project1.png',
      text: '''Created Web-site - Clothing store. Based on Django framework.
- Designed all web-pages style by myself.
- Included the ability to create new branches and sub-branches of outfits by using Django admin panel.
- By using Jinja created an automatically-filled templates of new branch pages, item pages and also a side menu.
- Added registration and authorization to web-site.
- Added wish-list and contact page.
- Added a search function.
- Implemented the idea of feedback-message from website to mail and saving it in database.
- Developed scenarios for pressing the button of social media. By pressing the button user is sent to text-chat with template phrase of items of interest.
- Include the ability to fully control the web-site: add new items, branches, items photo and change names of items, brand of company, all phone numbers etc.
- Landed site on test-hosting.
- Web-site was adapted for mobile/tablet devices. ''',
      isCV : true,
    ),
    BlogPost(title: 'Numerical Analysis calculator', by: 'Roman Chernogorov', img: 'https://fluttercv-a27b5.web.app/project2.png',
      text: '''Created an application through "KIVY" library for multiple methods of numerical analysis for Android and PC.
- For most methods of numerical analysis I used such libraries as: sympy, numpy,mpmath.
- Converted all lines of code into GUI KIV.Y
- Analysed all lines of code, upgrading and adding new methods.
- Distributed an .APK application in open access for all students on my faculty.
- There are 5 pages of different numerical analysis methods in total.''',
      isCV : true,
    ),
    BlogPost(title: 'Telegram-bot', by: 'Roman Chernogorov', img: 'https://fluttercv-a27b5.web.app/project3.png',
      text: '''Invented Telegram bot for searching desirable teammates for a few games by using Aiogram library.
- For registry and contact of all users in Database I used PostgreSQL.
- Added a registration that links user account with Telegram bot.
- Added possibility to reserve lobby for convenience of user's time.
- Added automated lobby creation for ranked and unranked online games.
- Added an option of commend and report of the users.
- Added an option of changing registration parameters such as: name, nickname, discord.
- Added function for contact with creators and supports of the project.
- Added an option to support project by donation.''',
      isCV : true,
    ),
    BlogPost(title: 'CV Web-Site', by: 'Roman Chernogorov', img: 'https://fluttercv-a27b5.web.app/project4.png',
      text: '''Created Web-site - CV by using Django framework.
This web-site was developed entirely by me. You can estimate the performance of this site by yourself - tap read more !. ''',
      isCV : true,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20,50,30,30),
        child: MasonryGridView.count(
          crossAxisCount: ((){
            if (MediaQuery.of(context).size.width > 340 * 4){
              crossAxisCount =4;
              return 4;
            }
            else if (MediaQuery.of(context).size.width > 340 * 3){
              crossAxisCount =3;
              return 3;
            }
            else if (MediaQuery.of(context).size.width > 340 * 2){
              crossAxisCount = 2;
              return 2;
            }
            crossAxisCount = 1;
            return 1;
          }()),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  border:
                  ((){
                    if(crossAxisCount ==1){
                        if (index == posts.length-1){
                          return  Border(right: BorderSide(color: Colors.grey, width: 0.5),);
                        }
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    if(index==0){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    if ((index+1)%crossAxisCount == 0){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    if ((index)%crossAxisCount == 0){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                  }())
              ),
              child: posts[index],
            );
          },
        ),
      ),
    );
  }
}
