import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MaterialApp(
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {

  final List<String> title = ['Olga\nBoznanska', 'Viceroyalty\nof Peru', 'Stanislaw Ignacy\nWitkiewicz',];
  final List<String> subtitle = ['Post-Impressionist\nPainting', 'Art from the\nViceroyalty of Peru', 'Stanislaw Ignacy\nWitkiewicz',];
  List<Color> colors = [Colors.amber[50], Colors.grey[400], Colors.deepOrange[900]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
               backgroundColor: Colors.white,
              leading: Padding(
                padding: EdgeInsets.only(left: 12),
                child: IconButton(
                  icon: Icon(Fontisto.nav_icon_grid, color: Colors.black,),
                  onPressed: () {
                    print('Click leading');
                  },
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
                  onPressed: () {
                    print('Click start');
                  },
                ),
              ],
              
            ),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: colors.length, itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  
                  Column(
                      children: <Widget>[
                      Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                          children: <Widget>[
                            Container(
                              color: colors[index],
                              height: MediaQuery.of(context).size.height * 0.5,
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
                                            Text(title[index].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0, fontWeight: FontWeight.bold),),
                                            SizedBox(height: 4,),
                                            Text(subtitle[index], style: TextStyle(color: Colors.black, fontSize: 21.0, fontWeight: FontWeight.bold),),
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
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
                    child: Icon(Ionicons.ios_arrow_round_forward,
                    size: 55,),),
                ],
              );
        }),
      ),
    );
  }
}
