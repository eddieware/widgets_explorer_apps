import 'package:flutter/cupertino.dart';

class ActionSheetScreen extends StatefulWidget {
  ActionSheetScreen({Key key}) : super(key: key);

  @override
  _ActionSheetScreenState createState() => _ActionSheetScreenState();
}

class _ActionSheetScreenState extends State<ActionSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Cards'),
      ),
      child: Center(
        child: Container(
          child: Text('Hello Scaffold'),
        ),
      ),
    );
  }
}
