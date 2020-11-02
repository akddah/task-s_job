import 'package:flutter/material.dart';
import 'mainScreen/mainPage.dart';
import 'package:provider/provider.dart';

import 'provider/depatmentsProvider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DepartMentProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'For Flutter job',
        theme: ThemeData(
          fontFamily: "cairo",
          primaryColor: Color.fromRGBO(253, 238, 147, 1),
          accentColor: Color.fromRGBO(255, 214, 0, 1),
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            headline2: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(fontSize: 10, color: Colors.grey),
            bodyText2: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ),
        home: MainPage(),
      ),
    );
  }
}
