import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final pages = [
    new PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        iconImageAssetPath: '',
        iconColor: null,
        bubbleBackgroundColor: null,
        body: Text(
          'You access blocked websites and firewalls!',
        ),
        title: Text(
          'Unlock',
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'assets/screen1.png',
          height: 150.0,
          width: 150.0,
          alignment: Alignment.center,
        )),
    new PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: '',
      iconColor: null,
      bubbleBackgroundColor: null,
      body: Text(
        'The best free VPN services on the market today!',
      ),
      title: Text('Unlimited'),
      mainImage: Image.asset(
        'assets/screen2.png',
        height: 150.0,
        width: 150.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: '',
      iconColor: null,
      bubbleBackgroundColor: null,
      body: Text(
        'It changes your IP address, hides locations!',
      ),
      title: Text('Anonymous'),
      mainImage: Image.asset(
        'assets/screen3.png',
        height: 150.0,
        width: 150.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intro', //title of app
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: new Builder(
        builder: (context) => new IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => new HomePage(),
              ), //MaterialPageRoute
            );
          },
          showSkipButton:
          true, //Whether you want to show the skip button or not.
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('HOME'),
      ), //Appbar
      body: new Center(
        child: new Text("Hello World!"),
      ), //Center
    ); //Scaffold
  }

}