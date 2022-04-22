import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String homeministry = 'https://www.moha.gov.np/';
const String immigration = 'https://www.immigration.gov.np/';
const String healthministry = 'https://mohp.gov.np/en';
const String financeministry = 'https://www.mof.gov.np/';
const String transportation = 'https://dotm.gov.np/';

class GovernmentSites extends StatelessWidget {
  static String routeName = '/governmentsites';

  const GovernmentSites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient:  LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[Color(0xff02c39a),  Color(0xff555b6e)],
                      tileMode: TileMode.decal))),
          title: Text(
            'Government Websites',
            style: TextStyle(
                fontFamily: GoogleFonts.acme().fontFamily,
                fontSize: 25,
                color: const Color(0xff00043a)),
          ),
          centerTitle: true,
        ),
        extendBody: true,
        primary: true,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[ Color(0xff00f5d4), Color(0xff718355)],
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
                          image: DecorationImage(
                            image: AssetImage('images/governmentlogo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Home Ministry',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(homeministry);
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
                            image:  AssetImage('images/governmentlogo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Immigration',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(immigration);
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
                            image:  AssetImage('images/governmentlogo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Health Ministry',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(healthministry);
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
                            image: AssetImage('images/governmentlogo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Finanace Ministry',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(financeministry);
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
                            image:  AssetImage('images/governmentlogo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Transportation',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(transportation);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
