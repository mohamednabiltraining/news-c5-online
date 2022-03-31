import 'package:flutter/material.dart';
import 'package:news_c5_online/home/category/category_details.dart';
import 'package:news_c5_online/home/home_screen.dart';

void main(){
runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'news',
      routes:{
        HomeScreen.routeName:(_)=>HomeScreen()
      },
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: Color(0xFF39A552),
        appBarTheme: AppBarTheme(
          color:  Color(0xFF39A552)
        )
      ),
    );
  }
}