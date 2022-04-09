import 'package:flutter/material.dart';
import 'package:flutter_dark_example/views/home_view.dart';
import 'package:flutter_dark_example/widgets/custom_theme.dart';

void main() => runApp(
      CustomTheme(
        initialThemeKey: MyThemeKeys.LIGHT,
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.of(context),
      home: HomeView(),
    );
  }
}
