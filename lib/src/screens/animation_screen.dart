import 'package:flutter/cupertino.dart';

class AnimationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Animation Container'),
      ),
      child: Center(
        child: Container(
          child: Text('Hello Animation'),
        ),
      ),
    );
  }
}
