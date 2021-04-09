import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
      @required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -100,
            left: -100,
            child: Image.asset('assets/LightBlue.png',
          width: size.width * 0.6,)
          ),
          Positioned(
            bottom: -100,
            right: -100,
            child: Image.asset('assets/BlueCircle.png',
          width: size.width * 0.7,)
          ),
          child,
        ],),
    );
  }
}