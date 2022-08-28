import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_giga/pages/post_builder_home_page.dart';
import 'package:web_giga/pages/projects_builder_project_page.dart';
import 'package:web_giga/widgets/home_app_bar_widget.dart';

import '../widgets/blog_post_widget.dart';
import '../widgets/education_post_build_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/home_galerey_widget.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/category_title_design.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  static const routeName = '/abbout';

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            backgroundColor: Colors.black,
            isCenter: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 100,
                horizontal: MediaQuery.of(context).size.width / 5),
            child: Image(
              image: NetworkImage('https://fluttercv-a27b5.web.app/about1.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Chernogorov Roman Alexandrovich',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 54)),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: Text('22 years old',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 36)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6),
            child: Text(
                'Hello! My name is Roman. I am a flutter and python developer. I am an IT professional with a proven track record in designing websites, managing databases,and mobile developing. I have strong technical skills as a Junior developer and excellent interpersonal skills,I know English and Russian language, enabling me to interact with a wide range of clients. I am eager to be challenged to grow and improve my IT skills. My greatest passion in life is using my technical knowledge for the convenience of other people and organizations.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 22)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 60),
            child: Column(
              children: [
                EducationPostBuild(img: 'https://fluttercv-a27b5.web.app/about2.png', title: 'Girne American University', year: '2018-2022', address: 'Cyprus,Girne,Üniversite Yolu Sokak Karman 99320',
                  text: '''Department of: computer engineering
Specification: program developer
Form of education: full-time
Language: english''',
                isReverse: false,),


                EducationPostBuild(img: 'https://fluttercv-a27b5.web.app/about3.jpg', title: 'Girne American University', year: '2018-2022', address: 'Cyprus,Girne,Üniversite Yolu Sokak Karman 99320',
                  text: '''Department of: computer engineering
Specification: program developer
Form of education: full-time
Language: english''',
                  isReverse: true,),



                EducationPostBuild(img: 'https://fluttercv-a27b5.web.app/about4.jpg', title: 'Girne American University', year: '2018-2022', address: 'Cyprus,Girne,Üniversite Yolu Sokak Karman 99320',
                  text: '''Department of: computer engineering
Specification: program developer
Form of education: full-time
Language: english''',
                  isReverse: false,),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    ));
  }
}

