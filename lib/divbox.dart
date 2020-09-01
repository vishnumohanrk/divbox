library divbox;

import 'package:flutter/material.dart';

class DivBox extends StatelessWidget {
  final double m, mx, my, mr, ml, mt, mb, p, px, py, pr, pl, pt, pb;

  final Widget child;
  final AlignmentGeometry align;

  DivBox({
    @required this.child,
    this.align,
    this.m,
    this.mx,
    this.my,
    this.mr,
    this.ml,
    this.mt,
    this.mb,
    this.p,
    this.px,
    this.py,
    this.pr,
    this.pl,
    this.pt,
    this.pb,
  });

  EdgeInsetsGeometry getValues(
      {double overall,
      double xAxis,
      double yAxis,
      double left,
      double right,
      double top,
      double bottom}) {
    final leftValue = left ?? xAxis ?? overall ?? 0;
    final rightValue = right ?? xAxis ?? overall ?? 0;
    final topValue = top ?? yAxis ?? overall ?? 0;
    final bottomValue = bottom ?? yAxis ?? overall ?? 0;

    return EdgeInsets.fromLTRB(leftValue, topValue, rightValue, bottomValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      alignment: align,
      padding: getValues(
        overall: p,
        yAxis: py,
        xAxis: px,
        left: pl,
        right: pr,
        top: pt,
        bottom: pb,
      ),
      margin: getValues(
        overall: m,
        yAxis: my,
        xAxis: mx,
        left: ml,
        right: mr,
        top: mt,
        bottom: mb,
      ),
    );
  }
}
