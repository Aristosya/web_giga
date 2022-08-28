import 'package:flutter/material.dart';
import 'package:web_giga/widgets/categories_popup_menu.dart';

import '../pages/about_page.dart';
import '../route_generator.dart';
import 'mobile_menu_widget.dart';

class CustomAppBar extends StatefulWidget {
  CustomAppBar({
    Key? key,
    required this.backgroundColor,
    required this.isCenter,
  }) : super(key: key);
  final Color backgroundColor;
  final bool isCenter;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  var isSearch = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    if (!isSearch) {
      return Container(
        height: 88,
        color: widget.backgroundColor,
        child: Row(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Center(
                  child: InkWell(
                      onTap: () => {
                        Navigator.popAndPushNamed(context, '/')
                      },
                      child: const Text(
                        'Roman.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            (() {
              if (screenWidth > 1000) {
                return buildExpandedMenu();
              }
              return Expanded(
                child: SizedBox.shrink(),
              );
            }()),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.search,
                    size: 45,
                    color: Colors.white,
                  ),
                  onPressed: ((){setState((){
                    isSearch = true;
                  });}),
                ),
                (() {
                  if (screenWidth <= 1000) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.menu,
                          size: 45,
                          color: Colors.white,
                        ),
                        onPressed: () {Navigator.of(context).push(HeroDialogRoute(builder: (context) {
    return MobileMenuWidget();
    },));}
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }()),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      );
    }
    return Container(
        height: 88,
        color: Color.fromRGBO(0, 0, 0, 0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
              child:
                  TextFormField(
                      cursorColor:  Colors.grey,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(16, 14, 0, 14),
                        labelText: 'Search for ...',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.never,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                          labelStyle: TextStyle(
                              color: Colors.white,
                            fontSize: 20,
                          )
                      ),
                    ),
                ),
              SizedBox(
                width: 42.5,
                height: 42.5,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed:((){setState((){
                      isSearch = false;
                    });}),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Expanded buildExpandedMenu() {
    return Expanded(
      child: Row(
        mainAxisAlignment: ((){
          if (widget.isCenter){
            return MainAxisAlignment.center;
          }
          return MainAxisAlignment.spaceBetween;
        }()),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.popAndPushNamed(context, '/'),
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ),
                ),
                CategoriesPopup(title: 'Categories', widthTitle: 98.0),
                InkWell(
                  onTap: () => {
                    Navigator.popAndPushNamed(context,AboutPage.routeName),
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
