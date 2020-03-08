import 'package:flutter/material.dart';
import 'package:fast_shop/views/login_page/login_page_view.dart';
import 'package:fast_shop/views/pages/home_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPageView(),
    );
  }
}

Widget build(BuildContext context) {
 return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Teste',
    routes: <String, WidgetBuilder>{
        '/views/pages' : (BuildContext context) => HomePage(),
    },
 );}