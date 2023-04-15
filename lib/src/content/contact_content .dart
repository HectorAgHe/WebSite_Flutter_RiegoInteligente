import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riego_inteligente_web/src/widget/responsive_widget.dart';

const address =
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3763.5940615432623!2d-97.96917432567417!3d19.38672204214617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85cffced901ddce7%3A0x900a8087658724ce!2sUniversidad%20Tecnol%C3%B3gica%20de%20Tlaxcala!5e0!3m2!1ses-419!2smx!4v1681532697323!5m2!1ses-419!2smx';
//https://www.google.com/maps/place/Universidad+Tecnol%C3%B3gica+de+Tlaxcala/@19.3868451,-97.9666995,16z/data=!4m6!3m5!1s0x85cffced901ddce7:0x900a8087658724ce!8m2!3d19.386717!4d-97.9665994!16s%2Fg%2F11bvx32bzf
//https://www.bing.com/maps?cp=19.372105905408773~-97.95328617095947&amp;sty=r&amp;lvl=16&amp;FORM=MBEDLD
//<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3763.5940615432623!2d-97.96917432567417!3d19.38672204214617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85cffced901ddce7%3A0x900a8087658724ce!2sUniversidad%20Tecnol%C3%B3gica%20de%20Tlaxcala!5e0!3m2!1ses-419!2smx!4v1681532788044!5m2!1ses-419!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

class ContactContent extends ResponsiveWidget {
  ContactContent({Key? key}) : super(key: key) {
    ui.platformViewRegistry.registerViewFactory(
        'google-maps',
        (int viewId) => IFrameElement()
          ..src = address
          ..style.border = 'none');
  }

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
      color: ui.Color.fromARGB(255, 233, 227, 227),
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
                    'Universidad Tecnologica de Tlaxcala',
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 23,
                    )),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'A El Carmen Xalpatlahuaya s/n, 90513 Huamantla, Tlaxcala.',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'IrrigationSystemsTlax@gmail.com',
                        style: GoogleFonts.lato(fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        child: Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.email),
                              color: ui.Color.fromARGB(153, 13, 15, 15),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '+52 241 208 60 06',
                        style: GoogleFonts.lato(fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.phone),
                              color: ui.Color.fromARGB(153, 13, 15, 15),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 24),
            // Container(
            //     width: 150.0,
            //     child:
            //         Image.asset('assets/images/screenshots/screenshotmap.png')),
            SizedBox(width: 24),
            Container(
              height: 400,
              width: 400,
              child: HtmlElementView(viewType: 'google-maps'),
            ),
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
