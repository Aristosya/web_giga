import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/blog_post_widget.dart';

class Posts extends StatelessWidget {
  Posts({
    Key? key,
  }) : super(key: key);


  int crossAxisCount = 1;
  List posts = [
    BlogPost(title: 'Need Web Hosting for Your Websites?',by: 'Roman Chernogorov, Site Partner', img: 'https://fluttercv-a27b5.web.app/postimg0.jpg'),
    BlogPost(title: 'Just a Normal Simple Blog Post.',by: 'Roman Chernogorov, DesignPhotography', img: 'https://fluttercv-a27b5.web.app/postimg1.jpg'),
    BlogPost(title: '10 Interesting Facts About Caffeine.',by: 'Roman Chernogorov, Health', img: 'https://fluttercv-a27b5.web.app/postimg2.jpg'),
    BlogPost(title: '5 Grayscale Coloring Techniques.',by: 'Roman Chernogorov, Design', img: 'https://fluttercv-a27b5.web.app/postimg3.jpg'),
    BlogPost(title: 'Using Repetition and Patterns in Photography.',by: 'Roman Chernogorov, WorkLifestyle', img: 'https://fluttercv-a27b5.web.app/postimg4.jpg'),
    BlogPost(title: 'How We Live Is What Makes Us Real.',by: 'Roman Chernogorov, TravelVacation', img: 'https://fluttercv-a27b5.web.app/postimg5.jpg'),
    BlogPost(title: 'Create Meaningful Family Moments.',by: 'Roman Chernogorov, FamilyRelationship', img: 'https://fluttercv-a27b5.web.app/postimg6.jpg'),
    BlogPost(title: 'Symmetry In Modern Design.',by: 'Roman Chernogorov, DesignPhotography', img: 'https://fluttercv-a27b5.web.app/postimg7.jpg'),
    BlogPost(title: '10 Tips for Managing Time Effectively.',by: 'Roman Chernogorov, LifestyleWork', img: 'https://fluttercv-a27b5.web.app/postimg8.jpg'),
    BlogPost(title: 'Throwback To The Good Old Days.',by: 'Roman Chernogorov,  Lifestyle', img: 'https://fluttercv-a27b5.web.app/postimg9.jpg'),
    BlogPost(title: '3 Reasons to Keep Your Workplace Tidy.',by: 'Roman Chernogorov, Work', img: 'https://fluttercv-a27b5.web.app/postimg10.jpg'),
    BlogPost(title: 'What The Beach Does to Your Brain.',by: 'Roman Chernogorov, HealthVacation', img: 'https://fluttercv-a27b5.web.app/postimg11.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
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
                    if ((index)%crossAxisCount == 0){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    if(index == 7){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    if ((index+1)%crossAxisCount == 0){
                      return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5),);
                    }
                    return  Border(bottom: BorderSide(color: Colors.grey, width: 0.5), right: BorderSide(color: Colors.grey, width: 0.5),);
                  }

                  ())
              ),
              child: posts[index],
            );
          },
        ),
      ),
    );
  }
}
