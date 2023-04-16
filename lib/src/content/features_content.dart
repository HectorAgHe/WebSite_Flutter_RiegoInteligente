import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    //Saber que medida tiene la pantalla

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
            SizedBox(height: 24),
            Column(
              children: [
                Text(
                  'Sensores utilizados y electrónica del sistema ',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'El uso de sensores en conjunto con internet cada vez es mas facil de encontrar y utilizar para controlar sistemas comunes y cotidianos. El Internet de las cosas describe físicos con sensores, capacidad de procesamiento de objetos, software y otras tecnologías que se conectan e intercambian datos con otros dispositivos y sistemas a través de internet u otras redes de comunicación ',
                  style: GoogleFonts.almendra(
                      textStyle: const TextStyle(
                    fontSize: 20.0,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              children: [
                // Inicio de contenedor que va en una columna / Informacion de los sensores
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 340,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset('assets/images/esp32.jpg')),
                      ),
                      SizedBox(width: 50),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Placa o modulo de desarrollo Esp32',
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'El módulo ESP32 es una solución de Wi-Fi/Bluetooth todo en uno, integrado y certificado que proporciona solo la radio inalámbrica, sino también un procesador integrado con interfaces para conectar con varios periféricos. ESP32 es un dispositivo que pequeño, portátil y barato que permite estar monitorizando y actuando mientras estás conectado a internet (algo así como un teléfono pero mucho más barato).',
                              style: GoogleFonts.almendra(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 90),
                // Fin de primer contenedor que va en una columna / Informacion de los sensores

                // Inicio segundo contenedor info sensores
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 340,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child:
                                Image.asset('assets/images/sensordht11.jpg')),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Módulo Sensor de Humedad y Temperatura DHT11',
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'El sensor DHT11 es un sensor de temperatura y humedad digital básico y de muy bajo costo, utiliza un sensor de humedad capacitivo y un termistor para medir el aire circundante y escupe una señal digital en el pin de datos. Con respecto al rango de temperatura, cae entre -20 y 60 ℃, el rango de humedad se encuentra entre 5 y 95 % de HR.El sensor de humedad se utiliza como medida preventiva en viviendas donde las personas se ven afectadas por la humedad.',
                              style: GoogleFonts.almendra(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 90),

                //Fin segundo contenedor info sensores

                // Inicio tercer contenedor info sensores
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 340,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child:
                                Image.asset('assets/images/sensorSuelo.jpg')),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sensor de Humedad del Suelo FC-28 Higrómetro',
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'Este sensor es ideal para monitorear el nivel de humedad las plantas y del suelo. Cuenta con un potenciómetro integrado que permite ajustar el valor de umbral, cuando la humedad del suelo es menor a este valor la salida digital mantendrá un valor “Alto”, cuando la humedad del suelo es superior al valor de umbral establecido, la salida digital del modulo conmutara a un estado “Bajo”. Son ampliamente empleados en sistemas automáticos de riego para detectar cuando es necesario activar el sistema de bombeo.',
                              style: GoogleFonts.almendra(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 90),

                //Fin tercer contenedor info sensores

                // Inicio cuarto contenedor info sensores
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 340,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child:
                                Image.asset('assets/images/caudalimetro.jpg')),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sensor Caudalimetro',
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'Un sensor de flujo o caudalímetro es un instrumento para la medición de caudal o gasto volumétrico de un fluido. El caudal es la cantidad de líquido o fluido (volumen) que circula a través de una tubería por unidad de tiempo, por lo general se expresa en: litros por minutos (l/m), litros por hora (l/h), metros cúbicos por hora (m³/h), suelen colocarse directamente en la tubería que transporta el fluido. También suelen llamarse medidores/sensores de caudal, medidores de flujo o flujómetros.',
                              style: GoogleFonts.almendra(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 90),

                //Fin cuarto contenedor info sensores
              ],
            )
          ],
        ),
      ),
    );
  }
}
