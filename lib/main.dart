import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtech/pages/login_page.dart';
import 'package:mtech/utils/routes.dart';
import 'package:mtech/widgets/themeData.dart';
import 'pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => LoginPage(),
       MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
      }
    );
  }
}
