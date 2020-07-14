import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickersScreen extends StatefulWidget {
  PickersScreen({Key key}) : super(key: key);

  @override
  _PickersScreenState createState() => _PickersScreenState();
}

class _PickersScreenState extends State<PickersScreen> {
  Duration timer = const Duration();
  DateTime date = DateTime.now();
  DateTime time = DateTime.now();
  DateTime dateTime = DateTime.now();

  Widget _buldDatePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
            context: context,
            semanticsDismissible: true,
            builder: (BuildContext context) {
              return _BottomPicker(
                  child: CupertinoDatePicker(
                      backgroundColor:
                          CupertinoColors.systemBackground.resolveFrom(context),
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: date,
                      onDateTimeChanged: (DateTime newDateTime) {
                        setState(() => date = newDateTime);
                      }));
            });
      },
      child: _Menu(children: <Widget>[
        const Text('date'),
        Text(
          DateFormat.yMMMMd().format(date),
          style: TextStyle(
              color: CupertinoDynamicColor.resolve(
                  CupertinoColors.inactiveGray, context)),
        ),
      ]),
    );
  }

  Widget _buildTimePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            semanticsDismissible: true,
            builder: (BuildContext context) {
              return _BottomPicker(
                child: CupertinoDatePicker(
                  backgroundColor:
                      CupertinoColors.systemBackground.resolveFrom(context),
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: time,
                  onDateTimeChanged: (DateTime newDateTime) {
                    setState(() => time = newDateTime);
                  },
                ),
              );
            });
      },
      child: _Menu(
        children: <Widget>[
          const Text('Time'),
          Text(
            DateFormat.jm().format(date),
            style: TextStyle(
                color: CupertinoDynamicColor.resolve(
                    CupertinoColors.inactiveGray, context)),
          ),
        ],
      ),
    );
  }

  Widget _buildDateAndTimePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          semanticsDismissible: true,
          builder: (BuildContext context) {
            return _BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor:
                    CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.dateAndTime,
                initialDateTime: dateTime,
                onDateTimeChanged: (DateTime newDateTime) {
                  setState(() => dateTime = newDateTime);
                },
              ),
            );
          },
        );
      },
      child: _Menu(
        children: <Widget>[
          const Text('Date and Time'),
          Text(
            DateFormat.yMMMd().add_jm().format(dateTime),
            style: TextStyle(
                color: CupertinoDynamicColor.resolve(
                    CupertinoColors.inactiveGray, context)),
          ),
        ],
      ),
    );
  }

  ///PAGE SCAFFOLD

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Slider'),
          previousPageTitle: 'Widgets',
        ),
        child: DefaultTextStyle(
            style: CupertinoTheme.of(context).textTheme.textStyle,
            child: ListView(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 32.0)),
                _buldDatePicker(context),
                _buildTimePicker(context),
                _buildDateAndTimePicker(context)
              ],
            )));
  }
}

class _BottomPicker extends StatelessWidget {
  const _BottomPicker({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.secondarySystemBackground.resolveFrom(context),
      child: DefaultTextStyle(
          style: TextStyle(
              color: CupertinoColors.label.resolveFrom(context),
              fontSize: 22.0),
          child: GestureDetector(
            onTap: () {},
            child: SafeArea(
              child: child,
              top: false,
            ),
          )),
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu({
    Key key,
    @required this.children,
  })  : assert(children != null),
        super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoTheme.of(context).scaffoldBackgroundColor,
        border: const Border(
          top: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
          bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
        ),
      ),
      height: 44.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          top: false,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          ),
        ),
      ),
    );
  }
}
