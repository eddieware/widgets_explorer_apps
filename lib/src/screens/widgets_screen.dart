import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_explorer_apps/utilities/cupertino_icons_custom.dart';

class WidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino App Bar'),
        ),
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Widgets Explorer'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.systemBackground,
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeBlue),
                          child: Icon(
                            CupertinoIcons.bell_solid,
                            color: CupertinoColors.white,
                          ),
                        ),
                        title: Text('Action Sheets and Alerts'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {
                          //Navigator.pushNamed(context, '/actionsheet');
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50.0),
                        height: 1,
                        color: CupertinoColors.systemGrey5,
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.black),
                          child: Icon(
                            getCupertinoIconData('squareandpencil'),
                            color: CupertinoColors.white,
                          ),
                        ),
                        title: Text('Text Inputs'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1,
                        color: CupertinoColors.systemGrey5,
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemGreen),
                          child: Icon(
                            getCupertinoIconData('slider'),
                            color: CupertinoColors.white,
                          ),
                        ),
                        title: Text('Switch And Slider'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1,
                        color: CupertinoColors.systemGrey5,
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemBlue),
                          child: Icon(
                            getCupertinoIconData('segmented'),
                            color: CupertinoColors.white,
                          ),
                        ),
                        title: Text('Segmented Control'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1,
                        color: CupertinoColors.systemGrey5,
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemOrange),
                          child: Icon(
                            getCupertinoIconData('calendar'),
                            color: CupertinoColors.white,
                          ),
                        ),
                        title: Text('Pickers'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: () {},
                      ),
                    ],
                  ))
            ]),
          )
        ]),
      ),
    );
  }
}
