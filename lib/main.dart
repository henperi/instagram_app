import 'package:flutter/material.dart';
import 'package:instagram_app/screens/activity_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';
import 'package:instagram_app/screens/upload_screen.dart';
import 'package:instagram_app/themes/light_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Instagram Clone',
        theme: lightTheme(),
        initialRoute: '/',
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SearchScreen.routeName: (context) => SearchScreen(),
          UploadScreen.routeName: (context) => UploadScreen(),
          ActivityScreen.routeName: (context) => ActivityScreen(),
        },
      ),
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
