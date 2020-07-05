import 'package:flutter/cupertino.dart';

class SwitchAndSlider extends StatefulWidget {
  SwitchAndSlider({Key key}) : super(key: key);

  @override
  _SwitchAndSliderState createState() => _SwitchAndSliderState();
}

class _SwitchAndSliderState extends State<SwitchAndSlider> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

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
              _myCupertinoSlider(),
              _myCupertinoSwitch(),
            ],
          ),
        )));
  }

  Widget _myCupertinoSlider() {
    return Container(
      width: 380,
      //color: CupertinoColors.activeGreen,
      child: CupertinoSlider(
        value: _valorSlider,
        min: 0.0,
        max: 400.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
                //set state para poder el slider
                //print(_valorSlider);
              },
      ),
    );
  }

  Widget _myCupertinoSwitch() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 16,
        ),
        Text(
          'Bloquear Slider',
        ),
        SizedBox(
          width: 220,
        ),
        CupertinoSwitch(
            value: _bloquearCheck,
            onChanged: (valor) {
              setState(() {
                _bloquearCheck = valor;
              });
            }),
      ],
    );
  }
}
