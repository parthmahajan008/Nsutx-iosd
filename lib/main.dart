import 'package:flutter/material.dart';
import 'package:nsutx/initialpages/login.dart';
import 'package:nsutx/initialpages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          // add tabBarTheme
          // outdated and has no effect to Tabbar
          // accentColor: Colors.cyan[600] // deprecated,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
        });
  }
}
