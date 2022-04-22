import 'package:favroite_websites/governmentsites.dart';
import 'package:favroite_websites/videosites.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fav Websites',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) =>const  HomePage(),
        GovernmentSites.routeName: (context) => const GovernmentSites(),
        VideoSites.routeName: (context) => const VideoSites(),
      },
    );
  }
}
