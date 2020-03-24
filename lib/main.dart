import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'profile_page.dart';

void main() => runApp(MaterialApp(
      home: MainScreen(),
    ));

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class HeadingText {
  String title;
  String subtitle;
  String image;
  String floatone;
  String floattwo;

  HeadingText(String title, String subtitle, String image, String floatone, String floattwo) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
    this.floatone = floatone;
    this.floattwo = floattwo;
  }
}

class _MainScreenState extends State<MainScreen> {


  List<HeadingText> headingText = List();

  _MainScreenState()
  {
    headingText.add(
  HeadingText('Olga\nBoznanska', 'Post-Impressionist\nPainting', 'images/art0.jpg','Olgaah', 'nanska'),
);
headingText.add(
  HeadingText('Viceroyalty\nof Peru','Art from the\nViceroyalty of Peru', 'images/art1.jpg','Vicero','Peru' ),
);
headingText.add(
  HeadingText('Stanislaw Ignacy\nWitkiewicz', 'The last\nself-portrait', 'images/art2.jpg', 'Witkie', 'Ignacy' ),
);

  }
  List<Color> colors = [Colors.amber[50], Colors.grey[400], Colors.deepOrange[400]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
               backgroundColor: Colors.white,
              leading: Padding(
                padding: EdgeInsets.only(left: 12),
                child: IconButton(
                  icon: Icon(Fontisto.nav_icon_grid, color: Colors.black,),
                  onPressed: () {},
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                   Text('Exhibitions',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 22,
                   )),
                ]
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(AntDesign.search1, color: Colors.black,
                  size: 28,),
                  onPressed: () {},
                ),
              ],
              
            ),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: headingText.length, itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  
                  Column(
                      children: <Widget>[
                      Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: Column(
                          children: <Widget>[
                            Container(
                              color: colors[index],
                              height: MediaQuery.of(context).size.height * 0.55,
                              child: Center(child: 
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(headingText[index].title, style: TextStyle(color: Colors.black, fontSize: 36.0, fontWeight: FontWeight.bold),),
                                            SizedBox(height: 4,),
                                            Text(headingText[index].subtitle, style: TextStyle(color: Colors.black, fontSize: 21.0, fontWeight: FontWeight.bold),),
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                                            Hero(
                                              tag: headingText[index],
                                                child: Image.asset(headingText[index].image,
                                                height: 100,
                                                width: 100,),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.85,
                                              height: 1,
                                              color: Colors.black,
                                            ),
                                            SizedBox(height: 10,),
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
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                            ),
                          ],
                        ),
                    ),
                    ],
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(headingText[index])));
                      },
                      child: Icon(Ionicons.ios_arrow_round_forward,
                      size: 55,),
                    ),),
                ],
              );
        }),
      ),
    );
  }
}
