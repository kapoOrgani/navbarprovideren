import 'package:flutter/material.dart';
import 'package:navbarpr/navbar_screen.dart';
import 'package:provider/provider.dart';

import 'navbar_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<NavbarProvider>(create: (_)=>NavbarProvider())

  ],child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: NavbarScreen(),
    );
  }
}

