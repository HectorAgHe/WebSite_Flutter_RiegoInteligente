import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riego_inteligente_web/src/content/login.dart';
import 'package:riego_inteligente_web/src/my_web_page.dart';
import 'package:url_strategy/url_strategy.dart';
//import 'package:riego_inteligente_web/src/my_page_web.dart';
//import 'package:url_strategy/url_strategy.dart'

void main() {
  setPathUrlStrategy();
  runApp(ProviderScope(
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sistema de Riego Inteligente',
    home: MyWebPage(),
  )));
  // initialRoute:
  // '/';
  // routes:
  // <String, WidgetBuilder>{
  //   '/': (BuildContext context) => MyWebPage(),
  //   'Login': (BuildContext context) => LoginScreen(),
  // };
}


// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//             // child: MyWebPage()
//             ),
//       ),
//     );
//   }
// }
