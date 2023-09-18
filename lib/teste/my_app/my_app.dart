import 'package:flutter/material.dart';
import '../../app/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey,),
      // textTheme: GoogleFonts.acmeTextTheme()),
      home: const LoginPage(),
    );
  }
}