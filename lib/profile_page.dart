import 'package:ex_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {

  HeadingText _headingText;
  ProfilePage(HeadingText headingText)
  {
    _headingText = headingText;
  }

  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
                  children: <Widget>[               
                          Container(
                            height: MediaQuery.of(context).size.height * 0.48,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.deepOrange[400].withOpacity(1),
                            child: Hero(
                            tag: _headingText,
                            child: Image.asset(_headingText.image, fit: BoxFit.fill,
                            ),),
                          ),
                          Container(
                  color: Colors.deepOrange[900].withOpacity(0.6),
                  height: MediaQuery.of(context).size.height,
                ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                            IconButton(
                              icon: Icon(Fontisto.nav_icon_grid, color: Colors.white,),
                              onPressed: () {},
                               ),
                            Text('Exhibitions',
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              )),
                            IconButton(
                              icon: Icon(AntDesign.search1, color: Colors.white,
                              size: 28,),
                              onPressed: () {},
                               ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: -85,
                            child: Text(_headingText.floatone, 
                            style: GoogleFonts.londrinaOutline(
                              fontSize: 100,
                              color: Colors.white
                            ),
                            ),
                          ),
                          Positioned(
                            top: 175,
                            left: -85,
                            child: Text(_headingText.floattwo, 
                            style: GoogleFonts.londrinaOutline(
                              fontSize: 100,
                              color: Colors.white
                            ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 30,
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Tickets Available',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),),
                                    SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                                    Row(
                                      children: <Widget>[
                                        Text('5 Out',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                        ),),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                          child: Icon(Icons.brightness_1,
                                          size: 5,),
                                        ),
                                        Text('10 Dec 2018',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Text(_headingText.title, style: TextStyle(color: Colors.black, fontSize: 36.0, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.17,
                                  width: MediaQuery.of(context).size.height * 0.425,
                                  child: Text('lorem ipsum dolor sit amet, consectetur adipising elit, sed do eiusmod tempor incididunt ut labore et do lore magna aliqua',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(height: 10),
                                OutlineButton(
                                  padding: EdgeInsets.fromLTRB(135, 20, 135, 20),
                                  onPressed: () {},
                                  child: Text('Get the ticket'),)
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