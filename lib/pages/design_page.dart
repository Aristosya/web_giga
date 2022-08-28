import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_giga/pages/post_builder_home_page.dart';
import 'package:web_giga/widgets/home_app_bar_widget.dart';

import '../widgets/blog_post_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/home_galerey_widget.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/category_title_design.dart';



class DesignPage extends StatefulWidget {
  const DesignPage({super.key});

  static const routeName = '/design';

  @override
  State<DesignPage> createState() => _HomePageState();
}

class _HomePageState extends State<DesignPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(backgroundColor: Colors.black,isCenter: true,),
          CategoryTitleDesign(title: 'Design',),
          Posts(),
          Pagination(),
          Footer(),
        ],
      ),
    ));
  }
}







