import 'package:data_kontak/Screen/home_screen.dart';
import 'package:data_kontak/Screen/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Kontak Form")),
        ),
        body: const HomeView(),
      ),
    );
  }
}

