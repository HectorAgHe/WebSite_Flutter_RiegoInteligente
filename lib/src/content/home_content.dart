import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher_string.dart';

import '../widget/responsive_widget.dart';

const googlePlayURL =
    'https://play.google.com/store/apps/details?id=com.google.android.youtube';
const appStoreURL = 'https://apps.apple.com/tw/app/youtube/id544007664';

class HomeContent extends ResponsiveWidget {
  const HomeContent({super.key});

// Widget para contenido de la pantalla de escritorio
  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopHomeContent();
  }

// Widget para contenido de la pantalla mobil
  @override
  Widget buildMobile(BuildContext context) {
    return MobileHomeContent();
  }
}

class DesktopHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Saber que medida tiene la pantalla
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .65,
      child: Row(
        children: [
          Container(
            width: width * .3,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/images/telefono.jpg')),
          ),
          SizedBox(width: 50),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sistema de Riego Inteligente",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(height: 24),
                Text(
                  'Te brinda de un servicio para mejorar la vida saludable de tu jardin, el internet de las cosas esta al alcance de todos, en este sistema de riego se emplea un sistema remoto que puedes operar a travez de una sencilla e interactiva aplicacion mobile, disponible en PlayStore y AppStore',
                  style: GoogleFonts.almendra(
                      textStyle: const TextStyle(
                    fontSize: 20.0,
                  )),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => launchUrlString(googlePlayURL),
                      child: Image.asset(
                        '/images/playstore.jpg',
                        height: 77,
                        width: 280,
                      ),
                    ),
                    SizedBox(width: 24),
                    GestureDetector(
                      onTap: () => launchUrlString(appStoreURL),
                      child: Image.asset(
                        '/images/apstore.png',
                        height: 80,
                        width: 310,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Sistema de Riego Inteligente",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 24),
          Text(
            'Te brinda de un servicio para mejorar la vida saludable de tu jardin, el internet de las cosas esta al alcance de todos, en este sistema de riego se emplea un sistema remoto que puedes operar a travez de una sencilla e interactiva aplicacion mobile, disponible en PlayStore y AppStore',
            style: GoogleFonts.almendra(
                textStyle: const TextStyle(
              fontSize: 20.0,
            )),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () => launchUrlString(googlePlayURL),
            child: Image.asset(
              '/images/playstore.jpg',
              height: 77,
              width: 280,
            ),
          ),
          SizedBox(width: 24),
          GestureDetector(
            onTap: () => launchUrlString(appStoreURL),
            child: Image.asset(
              '/images/apstore.png',
              height: 80,
              width: 310,
            ),
          ),
          SizedBox(height: 40),
          Image.asset(
            'assets/images/telefono.jpg',
            height: 350,
          ),
        ],
      ),
    );
  }
}
