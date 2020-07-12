import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickersScreen extends StatefulWidget {
  PickersScreen({Key key}) : super(key: key);

  @override
  _PickersScreenState createState() => _PickersScreenState();
}

class _PickersScreenState extends State<PickersScreen> {
  DateTime _dateTime = DateTime.now();
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
            children: <Widget>[
              Container(
                  alignment: Alignment.topCenter,
                  height: 524,
                  //color: CupertinoColors.activeOrange,
                  child: CupertinoTextField(
                    onTap: _myCupertinoPicker,
                    //controller: TextEditingController(text: 'SOMETHING'),
                    style: TextStyle(fontSize: 22),
                  )),
            ],
          ),
        )));
  }

  Widget _myCupertinoPicker() {
    return Container(
      
      color: CupertinoColors.activeGreen,
      height: 200,
      //padding: EdgeInsets.symmetric(vertical: 400),
      child: SizedBox(
        
        height: 200,
        child: CupertinoDatePicker(
            initialDateTime: _dateTime,
            onDateTimeChanged: (dateTime) {
              print(dateTime);
              setState(() {
                _dateTime = dateTime;
              });
            }),
      ),
    );
  }
}
