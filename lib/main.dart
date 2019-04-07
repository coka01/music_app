import 'package:flutter/material.dart';
import 'package:music_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF000000),
          onPressed: () {},
        ),
        title: Text(""),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Color(0xFF000000),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              /// Seek bar
              Expanded(
                child: Center(
                  child: Container(
                    width: 125.0,
                    height: 125.0,
                  ),
                ),
              ),

              /// Visualizer
              Container(
                width:double.infinity,
                height: 125.0,
              ),

              /// Song title, artist name, and controls

              Container(
                color: accentColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: "",
                            children: [
                              TextSpan(
                                  text: "Song Title\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 4.0,
                                    height: 1.5,
                                  )
                              ),
                              TextSpan(
                                  text: "Artist Name",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.75),
                                    fontSize: 12.0,
                                    letterSpacing: 3.0,
                                    height: 1.5,
                                  )
                              )
                            ]
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: Container(),),
                            IconButton(
                              icon: Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              onPressed: () {
                                // TODO
                              },
                            ),

                            Expanded(child: Container(),),
                            RawMaterialButton(
                              shape: CircleBorder(),
                              fillColor: Colors.white,
                              splashColor: lightAccentColor,
                              highlightColor: lightAccentColor.withOpacity(0.5),
                              elevation: 10.0,
                              highlightElevation: 5.0,
                              onPressed: () {
                                // TODO:
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: darkAccentColor,
                                    size: 35.0,
                                ),
                              ),
                            ),

                            Expanded(child: Container(),),
                            IconButton(
                              icon: Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              onPressed: () {
                                // TODO
                              },),

                            Expanded(child: Container(),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
