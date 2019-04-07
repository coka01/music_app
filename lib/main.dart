import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_app/bottom_controls.dart';
import 'package:music_app/songs.dart';
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
                    child: ClipOval(
                      clipper: CircleClipper(),
                      child: Image.network(
                        demoPlaylist.songs[0].albumArtUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              /// Visualizer
              Container(
                width:double.infinity,
                height: 125.0,
              ),

              /// Song title, artist name, and controls
              new BottomControls()
            ],
          ),
      ),
    );
  }
}
