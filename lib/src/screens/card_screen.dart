import 'package:flutter/cupertino.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Cards'),
      ),
      child: Center(
        child: Container(
          child: Text('Hello Cards'),
        ),
      ),
    );
  }
}
