import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_names/providers/word_provider.dart';
import 'package:take_names/route/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WordState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Name App',
        darkTheme: ThemeData.dark(useMaterial3: true),
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
