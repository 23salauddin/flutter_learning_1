import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme() {
    TextTheme _basicTextTheme(TextTheme base) {
      return base.copyWith(
        headline1: base.headline1.copyWith(
          fontSize: 72.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: Colors.white,
        ),
        headline6: base.headline6.copyWith(
          fontSize: 23.0,
          fontFamily: 'Lato',
        ),
        bodyText2: base.bodyText2.copyWith(
          fontSize: 16.0,
          fontFamily: 'Lato',
          color: Colors.deepPurple[300],
        ),
        headline4: base.headline4.copyWith(
          fontSize: 18.0,
          fontFamily: 'Lato',
          color: Colors.deepPurple[600],
        ),
        headline5: base.headline4.copyWith(
          fontSize: 18.0,
          fontFamily: 'Lato',
          color: Colors.deepPurple[50],
          //buttons
        ),
        caption: base.headline5.copyWith(
          fontSize: 12.0,
          fontFamily: 'Lato',
        ),
        bodyText1: base.bodyText1.copyWith(
          color: Colors.deepPurple[300],
          fontSize: 14,
        ),
      );
    }

    final ThemeData base = ThemeData.light();
    return base.copyWith(
        textTheme: _basicTextTheme(base.textTheme),
        primaryColor: Colors.pink[900],
        accentColor: Colors.pink[400],
        iconTheme: IconThemeData(
          color: Colors.pink[200],
          size: 20.0,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.pink[700],
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.primary,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.pink[200],
          overlayColor: Colors.pink[400].withAlpha(32),
          thumbColor: Colors.pink[200],
        ));
  }
}