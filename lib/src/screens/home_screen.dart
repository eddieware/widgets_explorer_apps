import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_apps/src/routes/routes.dart';
import 'package:widgets_explorer_apps/src/screens/widgets_screen.dart';
import 'animation_screen.dart';
import 'card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //todo metodo bu¡ld tiene que tener un context y es un objeto que es pasado en tre todos los objetos de esta clase

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text('Widgets'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.play_arrow),
          title: Text('Animation'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.share_up),
          title: Text('Cards'),
        ),
      ]),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          // here to get the number of cases and know wich is selected
          routes: getApplicationRoutes(),
          builder: (context) {
            switch (index) {
              case 0:
                return WidgetsScreen();
                break;
              case 1:
                return AnimationsScreen();
                break;
              case 2:
                return CardScreen();
                break;
            }
            return WidgetsScreen();
          },
        );
      },
    );
  }
}
