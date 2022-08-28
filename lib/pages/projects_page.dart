import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_giga/pages/post_builder_home_page.dart';
import 'package:web_giga/pages/projects_builder_project_page.dart';
import 'package:web_giga/widgets/home_app_bar_widget.dart';

import '../widgets/blog_post_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/home_galerey_widget.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/category_title_design.dart';



class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  static const routeName = '/projects';

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(backgroundColor: Colors.black,isCenter: true,),
          CategoryTitleDesign(title: 'Projects'),
          Projects(),
          Pagination(),
          Footer(),
        ],
      ),
    ));
  }
}







