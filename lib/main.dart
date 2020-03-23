import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
            body: StartPage()
        ),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
  child: new SingleChildScrollView(
    child: new Column(
      children: <Widget>[
        Container(
          color: Colors.white70,
          height: 320,
        ),
        Container(
          color: Colors.blue,
          height: 320,
        ),
        Container(
          color: Colors.white,
          height: 320,
        ),
      ]
    )
  )
);
  }
}

class BoxCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

