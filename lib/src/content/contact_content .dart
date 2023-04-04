import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riego_inteligente_web/src/widget/responsive_widget.dart';

const address =
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101408.21722940235!2d-122.15130702796334!3d37.41331444145766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb7495bec0189%3A0x7c17d44a466baf9b!2sMountain%20View%2C%20CA%2C%20USA!5e0!3m2!1sen!2stw!4v1613513352653!5m2!1sen!2stw';

class ContactContent extends ResponsiveWidget {
  ContactContent({Key? key}) : super(key: key) {}
  // {
  //   ui.platformViewRegistry.registerViewFactory(
  //       'google-maps',
  //       (int viewId) => IFrameElement()
  //         ..src = address
  //         ..style.border = 'none');
  // }

  @override
  Widget buildDesktop(BuildContext context) => DesktopContactContent();

  @override
  Widget buildMobile(BuildContext context) => MobileContactContent();
}

class DesktopContactContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: ui.Color.fromARGB(255, 206, 143, 120),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informacion de Contacto",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Segunda privada, Sancosme Xaloztoc, Tlaxcala',
                    style: GoogleFonts.almendra(
                        textStyle: const TextStyle(
                      fontSize: 20.0,
                    )),
                  ),
                  Text(
                    'C.P. 90450',
                    style: GoogleFonts.almendra(
                        textStyle: const TextStyle(
                      fontSize: 20.0,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),

            Container(
                width: 150.0,
                child:
                    Image.asset('assets/images/screenshots/screenshotmap.png')),

            SizedBox(width: 24),
            // Container(
            //   height: 400,
            //   width: 400,
            //   child: HtmlElementView(viewType: 'google-maps'),
            // ),
          ],
        ),
      ),
    );
  }
}

class MobileContactContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ui.Color.fromARGB(255, 206, 143, 120),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Informacion de Contacto",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 25),
            Text(
              'Segunda privada, Sancosme Xaloztoc, Tlaxcala',
              style: GoogleFonts.almendra(
                  textStyle: const TextStyle(
                fontSize: 20.0,
              )),
            ),
            Text(
              'C.P. 90450',
              style: GoogleFonts.almendra(
                  textStyle: const TextStyle(
                fontSize: 20.0,
              )),
            ),
            SizedBox(height: 24),
            Container(
                width: 150.0,
                child:
                    Image.asset('assets/images/screenshots/screenshotmap.png')),
            // Container(
            //   height: 400,
            //   width: 400,
            //   child: HtmlElementView(viewType: 'google-maps', key: UniqueKey()),
            // ),
          ],
        ),
      ),
    );
  }
}
