import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String youtube = 'https://www.youtube.com/';
const String netflix = 'https://www.netflix.com/browse';
const String dailymotion = 'https://www.dailymotion.com/kr';
const String prime =
    'https://www.primevideo.com/?ref_=dvm_pds_amz_kr_dc_s_g_mkw_sLqnHSrxw-dc_pcrid_231853434446&mrntrk=slid__pgrid_40407283807_pgeo_1030764_x__ptid_kwd-2850171361';
const String vimeo = 'https://vimeo.com/';

class VideoSites extends StatelessWidget {
  static String routeName = '/videosites';

  const VideoSites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[ Color(0xff02c39a), Color(0xff555b6e)],
                      tileMode: TileMode.decal))),
          title: Text(
            'Video Websites',
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
              gradient:  LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Color(0xff7b2cbf), Color(0xff2a3d45)],
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
                            image: AssetImage('images/youtube.png'),
                          ),
                        ),
                      ),
                      Text(
                        ' Youtube',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(youtube);
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
                            image: AssetImage('images/netflix.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Netflix',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(netflix);
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
                            image: AssetImage('images/dailymotion.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Dailymotion',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(dailymotion);
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
                            image: AssetImage('images/prime.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Amazon Prime',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(prime);
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
                            image: AssetImage('images/vimeo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Vimeo',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  launch(vimeo);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
