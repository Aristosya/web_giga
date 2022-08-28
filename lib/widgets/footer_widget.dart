import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(239, 240, 240, 1),
      child: Column(
        children: [
          SizedBox(
            height: 128,
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      height: 315,
                      width: 330,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ABOUT OUR SITE'),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            height: 1,
                            width: 330,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                              'Lorem ipsum Ut velit dolor Ut labore id fugiat in utfugiat nostrud qui in dolore commodo eu magna Duiscillum dolor officia esse mollit proident Excepteurexercitation nulla. Lorem ipsum In reprehenderitcommodo aliqua irure.')
                        ],
                      ),
                    ),
                  )),
              Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      height: 315,
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SITE LINKS'),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            height: 1,
                            width: 220,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text('About Us'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('Blog'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('FAQ'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('Terms'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('Privacy Policy'),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 315,
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FOLLOW US'),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 1,
                          width: 220,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text('Twitter'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Text('Facebook'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Text('Dribble'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Text('Pinterest'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Text('Instagram'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 315,
                    width: 450,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('SIGN UP FOR NEWSLETTER'),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 1,
                      width: 450,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                          'Signup to get updates on articles, interviews and events.'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: TextFormField(
                        cursorColor:  Colors.grey,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 14, 0, 14),
                          labelText: 'Your Email Address',
                          floatingLabelBehavior:
                          FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                  Colors.grey)),
                        ),
                      ),
                    ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: InkWell(
                              child: Container(
                                width: 450,
                                height: 56,
                                color: Colors.black,
                                child: Center(child: Text('SUBSCRIBE',style: TextStyle(color: Colors.white,letterSpacing: 4),)),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Row()),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
