import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key? key}) : super(key: key);

  Widget buildMobile(BuildContext context);

  Widget buildDesktop(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 800) {
        return buildMobile(context);
      } else {
        return buildDesktop(context);
      }
    });
  }
}
