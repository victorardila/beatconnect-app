import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beactconnect App',
      theme: ThemeData.dark(),
      initialRoute: '/principal',
      // routes: {
      //   "/": (context) => IntroSimple(),
      //   //"/": (context) => const IntroFull(),
      //   "/principal": (context) => Home(),
      // },
    );
  }
}
