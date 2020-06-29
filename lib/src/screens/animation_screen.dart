import 'dart:math';
import 'package:flutter/cupertino.dart';

class AnimationsScreen extends StatefulWidget {
  @override
  _AnimationsScreenState createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = CupertinoColors.activeGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Animation Container'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 300),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      width: _width,
                      height: _height,
                      decoration: BoxDecoration(
                          borderRadius: _borderRadius, color: _color),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 00),
                    child: CupertinoButton.filled(
                      child: Text('Alert'),
                      onPressed: () {},
                    ),
                  ),
                ],

                // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 00),
                // child: CupertinoButton.filled(
                //   child: Text('Alert'),
                //   onPressed: () {},
                // ),
              ),
            )
          ],
        )

        //here
        );
  }

  // CupertinoButton.filled(
  //             child: Text('Alert'),
  //             onPressed: () {},
  //           ),

  void _cambiarForma() {
    final random = Random();

    setState(() {
      _height = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
