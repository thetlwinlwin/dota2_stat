import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String text;
  const ErrorPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(text),
      )),
    );
  }
}
