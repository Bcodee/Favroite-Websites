import 'package:favroite_websites/governmentsites.dart';
import 'package:favroite_websites/videosites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String facebook = 'https://www.facebook.com/';
const String instagram = 'https://www.instagram.com/';
const String twitter = 'https://twitter.com/?lang=en';
const String reddit = 'https://www.reddit.com/';
const String pinterest = 'https://www.pinterest.com/';

class HomePage extends StatelessWidget {
  static String routeName = '/homepage';

  const HomePage({Key? key}) : super(key: key);
  // final String url;
  // HomePage(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Color(0xff02c39a), Color(0xff555b6e)],
                  tileMode: TileMode.decal)),
        ),
        title: Text(
          'Social Websites',
          style: TextStyle(
              fontFamily: GoogleFonts.acme().fontFamily,
              fontSize: 25,
              color: const Color(0xff00043a)),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Color(0xfffcbf49), Color(0xff9d4edd)],
                  tileMode: TileMode.decal)),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('images/circularavatar.png'),
                ),
                accountName: Text('Bikram Baraili',style: TextStyle(
              fontFamily: GoogleFonts.acme().fontFamily,
              fontSize: 20,
              color: const Color(0xff00043a)),),
                accountEmail: Text('Bikrambaraili4@gmail.com',style: TextStyle(
              fontFamily: GoogleFonts.alatsi().fontFamily,
              fontSize: 15,
              color: const Color(0xff00043a)),),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: const Icon(Icons.facebook),
                title: Text(
                  'Social Sites',
                  style: TextStyle(
              fontFamily: GoogleFonts.oswald().fontFamily,
              fontSize: 18,
              color: const Color(0xff273043)),
                ),
                subtitle: const Text('Click here to view social sites'),
                trailing: const Icon(Icons.arrow_right_alt, size: 30),
                onTap: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.video_collection_sharp),
                title: Text(
                  'Video Sites',
                  style: TextStyle(
              fontFamily: GoogleFonts.oswald().fontFamily,
              fontSize: 18,
              color: const Color(0xff273043)),
                ),
                subtitle: const Text('Click here to view Video sites'),
                trailing: const Icon(Icons.arrow_right_alt, size: 30),
                onTap: () {
                  Navigator.pushNamed(context, VideoSites.routeName);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.account_balance),
                title: Text(
                  'Government Sites',
                  style: TextStyle(
              fontFamily: GoogleFonts.oswald().fontFamily,
              fontSize: 18,
              color: const Color(0xff273043)),
                ),
                subtitle: const Text('Click here to view Government sites'),
                trailing: const Icon(Icons.arrow_right_alt, size: 30),
                onTap: () {
                  Navigator.pushNamed(context, GovernmentSites.routeName);
                },
              ),
              const Divider(
                thickness: 2,
                color: Colors.black38,
              ),
              ListTile(
                title: const Text(
                  'Close',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[Color(0xfffcbf49), Color(0xff9d4edd)],
                tileMode: TileMode.decal)),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: const BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage('images/facebook.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                launch(facebook);
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('images/instagram.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                launch(instagram);
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: const BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage('images/twitter.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Twitter',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                launch(twitter);
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('images/reddit.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Reddit',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                launch(reddit);
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: const BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage('images/pinterest.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Pinterest',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                launch(pinterest);
              },
            ),
          ],
        ),
      ),
    );
  }
}
