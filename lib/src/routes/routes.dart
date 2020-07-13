import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_explorer_apps/src/screens/action_sheet_screen.dart';
import 'package:widgets_explorer_apps/src/screens/home_screen.dart';
import 'package:widgets_explorer_apps/src/screens/pickers_screen.dart';
import 'package:widgets_explorer_apps/src/screens/segmented_control.dart';
import 'package:widgets_explorer_apps/src/screens/switch_and_slider.dart';
import 'package:widgets_explorer_apps/src/screens/text_input_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/actionsheet': (BuildContext context) => ActionSheetScreen(),
    '/switch': (BuildContext context) => SliderScreen(),
    '/segmented': (BuildContext context) => SegmentedControl(),
    '/pickers': (BuildContext context) => PickersScreen(),
    '/inputs': (BuildContext context) => TextInputScreen(),
  };
}
