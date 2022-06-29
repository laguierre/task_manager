import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Task',
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSans().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
