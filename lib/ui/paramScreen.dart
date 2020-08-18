import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Paramètres',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
