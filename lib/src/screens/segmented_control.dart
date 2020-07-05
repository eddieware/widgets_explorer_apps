import 'package:flutter/cupertino.dart';

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key}) : super(key: key);

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Slider and Switch'),
          previousPageTitle: 'Widgets',
        ),
        child: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[Text('SEGEMENTED')],
          ),
        )));
  }
}
