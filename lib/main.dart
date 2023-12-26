import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laughter_therapy/Models/theme_model.dart';
import 'package:laughter_therapy/Providers/theme_provider.dart';
import 'package:laughter_therapy/Views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'Api_Helper/api_helper.dart';
import 'Models/api_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<CountryModel> AllCountryData = [];

  @override
  void initState() {
    super.initState();
    getdata().then((value) {
      setState(() {
        Timer(Duration(seconds: 5), () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SplashScreen();
            },
          ));
        });
      });
    });
    print(AllCountryData);
  }

  getdata() async {
    await ApiHelper.apiHelper.FetchCountry();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        theme: (Provider.of<ThemeProvider>(context).themeModel.islight == false)
            ? ThemeData.dark()
            : ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
