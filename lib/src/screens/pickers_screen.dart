import 'package:flutter/cupertino.dart';

class PickersScreen extends StatefulWidget {
  PickersScreen({Key key}) : super(key: key);

  @override
  _PickersScreenState createState() => _PickersScreenState();
}

class _PickersScreenState extends State<PickersScreen> {
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
            children: <Widget>[Text('Pickers')],
          ),
        )));
  }
}
