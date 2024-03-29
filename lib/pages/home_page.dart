import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_giga/pages/post_builder_home_page.dart';

import '../widgets/blog_post_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/home_galerey_widget.dart';
import '../widgets/pagination_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HomeGalerey(),
          Posts(),
          Pagination(),
          Footer(),
        ],
      ),
    ));
  }
}





