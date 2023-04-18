import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/responsive_widget.dart';

class ScreenshotsContent extends ResponsiveWidget {
  const ScreenshotsContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) =>
      ScreenshotsContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => ScreenshotsContentResponsive(24);
}

class ScreenshotsContentResponsive extends StatelessWidget {
  final horizontalPadding;

  const ScreenshotsContentResponsive(this.horizontalPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Desarrollo del producto",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'El sistema esta desarrollado por un equipo de ingenieros en software para brindar un producto de calidad, este sistema se desarrolla en secciones y de una forma agil y eficas garantizando la satisfaccion del cliente  |  Se muestran imagenes de las principales vistas que tendra en la App |  |.',
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                  fontSize: 20.0,
                )),
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 500,
              width: 1000,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _Image(image: "assets/images/screenshots/screen1.jpg"),
                    _Image(image: "assets/images/screenshots/screen2.jpg"),
                    _Image(image: "assets/images/screenshots/screen3.jpg"),
                    _Image(image: "assets/images/screenshots/screen4.jpg"),
                    _Image(image: "assets/images/screenshots/screen5.jpg"),
                    _Image(image: "assets/images/screenshots/screen6.jpg"),
                    //_Image(image: "assets/images/screenshots/screen7.jpg"),
                    //_Image(image: "assets/images/screenshots/screen8.png"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String image;

  const _Image({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Image.asset(image),
        SizedBox(width: 16),
      ],
    );
  }
}

class ScreenShotsContent extends StatelessWidget {
  const ScreenShotsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 250,
    );
  }
}
