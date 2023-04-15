import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riego_inteligente_web/src/widget/responsive_widget.dart';
import 'dart:html';
import 'dart:ui' as ui;

final youtubeVideo = 'https://www.youtube.com/embed/pFG8yu7kdAs';
//<iframe width="1349" height="480" src="https://www.youtube.com/embed/pFG8yu7kdAs" title="Cómo funciona el riego inteligente" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

//https://www.youtube.com/watch?v=pFG8yu7kdAs&t=33s
class FeaturesContent extends ResponsiveWidget {
  FeaturesContent({Key? key}) : super(key: key) {
    ui.platformViewRegistry.registerViewFactory(
      'youtube-video',
      (int viewId) => IFrameElement()
        ..src = youtubeVideo
        ..style.border = 'none',
    );
  }

  @override
  Widget buildDesktop(BuildContext context) => FeaturesContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => FeaturesContentResponsive(24);
}

class FeaturesContentResponsive extends StatelessWidget {
  final horizontalPadding;

  const FeaturesContentResponsive(this.horizontalPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "¿Que es y por que tener un sistema inteligente?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'La principal razon es hacer buen uso del recurso vital agua y ademas poder monitorear nuestro jardin con un riego inteligente.',
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                  fontSize: 20.0,
                )),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 800,
              height: 450,
              child:
                  HtmlElementView(viewType: 'youtube-video', key: UniqueKey()),
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 500,
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/images/aspersor.jpg')),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Esta hecho con internet de las cosas como se muestra en la imagen',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
