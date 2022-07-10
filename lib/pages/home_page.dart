import 'package:flutter/material.dart';

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
          Container(
            height: 1050,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
                image: NetworkImage(
                    'https://www.styleshout.com/templates/preview/Calvin_1_0_0/images/slide1-bg-3000.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 88,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Center(
                            child: InkWell(
                                // todo: Here to home
                                onTap: () => {},
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Home',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Blog',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'About',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Contact',
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
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            // todo: to Search page
                            icon: const Icon(
                              Icons.search,
                              size: 45,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 250),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(),
                              Text(
                                'Tips and Ideas to Help You Start Freelancing.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w600,
                                ),
                                softWrap: true, // flexible text,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 140),
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
                                      //todo: Tap on social
                                      IconButton(onPressed: () => {}, icon: Icon(Icons.facebook, color: Colors.white,)),
                                      //todo: Tap on social
                                      IconButton(onPressed: () => {}, icon: Icon(Icons.facebook, color: Colors.white,)),
                                      //todo: Tap on social
                                      IconButton(onPressed: () => {}, icon: Icon(Icons.facebook, color: Colors.white,)),
                                      //todo: Tap on social
                                      IconButton(onPressed: () => {}, icon: Icon(Icons.facebook, color: Colors.white,)),
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
                                // todo: previous slide
                                onTap: () => {},
                                child: Container(
                                  color: Colors.white,
                                  width: 64,
                                  height: 56,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                // todo: next slide
                                onTap: () => {},
                                child: Container(
                                  color: Colors.white,
                                  width: 64,
                                  height: 56,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
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
          ),
          Container(
            height: 2770.44,
          )
        ],
      ),
    ));
  }
}
