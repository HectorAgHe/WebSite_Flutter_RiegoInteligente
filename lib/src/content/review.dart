import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String user;
  final String details;
  final String comments;

  const Review(
      {super.key,
      required this.pathImage,
      required this.user,
      required this.details,
      required this.comments});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
