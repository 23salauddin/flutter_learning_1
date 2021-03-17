import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_1/theme/app_theme.dart';
import 'package:flutter_learning_1/ui_screens/home_screen.dart';
import 'package:flutter_learning_1/ui_screens/item_list_screen.dart';

void main() => runApp(MyAppFirstScreen());

class MyAppFirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // Status bar theme
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
        // statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        // systemNavigationBarColor: Colors.white     ///  navigation (bottom) panel
        ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Dart",
      theme: AppTheme.lightTheme(),   // adding custom theme
      // ThemeData(primarySwatch: Colors.blueGrey),     // auto theming using material colors
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          brightness: Brightness.dark,    // set status bar icon theme [dark or light]
          leading: Badge(
            position: BadgePosition.topEnd(top: 10, end: 10),
            badgeContent: null,
            child: IconButton(
              icon: Image.asset('assets/images/cart_arr.png.png'),
              onPressed: () {
                debugPrint('blank');
              },
            ),
          ),
        ),
        // body: HomeScreen(),
        body: ItemListScreen(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xE0BF0A86),
          child: Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }

}
