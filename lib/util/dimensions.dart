import 'package:flutter/material.dart';

class Dimensions {
  static const verticalSBox0 = SizedBox(height: 5);
  static const verticalSBox1 = SizedBox(height: 10);
  static const verticalSBox2 = SizedBox(height: 20);
  static const verticalSBox3 = SizedBox(height: 30);

  static const horizontalSBox0 = SizedBox(width: 5);
  static const horizontalSBox1 = SizedBox(width: 10);
  static const horizontalSBox2 = SizedBox(width: 15);
  static const horizontalSBox3 = SizedBox(width: 20);

  static const appPadding = EdgeInsets.symmetric(horizontal: 15);

  BuildContext context;

  Dimensions(this.context);
  double get height => MediaQuery.sizeOf(context).height;

  double get width => MediaQuery.sizeOf(context).width;
}
