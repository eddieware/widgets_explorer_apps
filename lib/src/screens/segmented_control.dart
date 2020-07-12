import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key}) : super(key: key);

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  @override
  int defaultValue = 0;
  final Map<int, Widget> mapaOpciones = const <int, Widget>{
    0: Text(
      "Indigo",
      style: TextStyle(color: CupertinoColors.black),
    ),
    1: Text(
      "Teal",
      style: TextStyle(color: CupertinoColors.black),
    ),
    2: Text(
      "Cyan",
      style: TextStyle(color: CupertinoColors.black),
    )
  };

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Slider and Switch'),
          previousPageTitle: 'Widgets',
        ),
        child: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[
              Container(
                //alignment: Alignment.bottomLeft,
                //color: CupertinoColors.activeBlue,
                padding: EdgeInsets.symmetric(vertical: 20),
                width: 400,
                child: Expanded(
                  child: Container(
                    child: CupertinoSlidingSegmentedControl(
                      //unselectedColor: CupertinoColors.systemGrey5,
                      //selectedColor: CupertinoColors.white,
                      //borderColor: CupertinoColors.systemGrey3,
                      groupValue: defaultValue,
                      onValueChanged: (changedValue) {
                        setState(() {
                          defaultValue = changedValue;
                        });
                        print(defaultValue);
                      },
                      children: mapaOpciones,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                //color: CupertinoColors.activeBlue,
                padding: EdgeInsets.all(50),
                child: _cambiaColor(),
              )
            ],
          ),
        )));
  }

  _cambiaColor() {
    if (defaultValue == 0) {
      return FlutterLogo(size: 200, colors: Colors.indigo);
    } else if (defaultValue == 1) {
      return FlutterLogo(size: 200, colors: Colors.teal);
    } else {
      return FlutterLogo(size: 200, colors: Colors.cyan);
    }
    //
  }
}
