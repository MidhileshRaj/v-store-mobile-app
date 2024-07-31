import 'package:flutter/cupertino.dart';

class CurvedEdgesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    final startFirstCurve = Offset(0, size.height - 15);
    final endFirstCurve = Offset(30, size.height - 15);
    path.quadraticBezierTo(
        startFirstCurve.dx, startFirstCurve.dy, endFirstCurve.dx, endFirstCurve.dy);

    final secondCurve = Offset(0, size.height - 15);
    final endSecondCurve = Offset(size.width-30, size.height - 15);
    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, endSecondCurve.dx, endSecondCurve.dy);


    final thirdCurve = Offset(size.width, size.height - 15);
    final endThirdCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdCurve.dx, thirdCurve.dy, endThirdCurve.dx, endThirdCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
