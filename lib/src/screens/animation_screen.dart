import 'dart:math';
import 'package:flutter/cupertino.dart';

class AnimationsScreen extends StatefulWidget {
  @override
  _AnimationsScreenState createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  double _width = 100.0;
  double _heightContainer = 100.0;
  Color _color = CupertinoColors.activeGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Animation Container'),
        ),
        child: Center(
          child: Container(
            //THIS IS FOR LAYOUT
            constraints: BoxConstraints.expand(),

            color: CupertinoColors.systemGrey4,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  width: _width,
                  height: _heightContainer,
                  decoration:
                      BoxDecoration(borderRadius: _borderRadius, color: _color),
                ),
                Positioned(
                  bottom: 85,
                  child: CupertinoButton.filled(
                      child: Icon(CupertinoIcons.play_arrow),
                      onPressed: _cambiarForma,
                      padding: EdgeInsets.symmetric(horizontal: 30)),
                )
              ],
            ),
          ),
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
      _heightContainer = random.nextInt(255).toDouble();
      _width = random.nextInt(255).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
