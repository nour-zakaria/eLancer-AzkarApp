import 'package:elancer_azkara_pp/screens/azkar_screen.dart';
import 'package:elancer_azkara_pp/screens/bio_screen.dart';
import 'package:elancer_azkara_pp/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en')
      ],
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) =>LanuchScreen(),
        '/azkar_screen': (context) =>AzkarScreen(),
        '/bio_screen':(context) =>BioScreen()
      },
    );
  }
}
