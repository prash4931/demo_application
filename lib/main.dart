import 'package:demo_application/screens/movies/movies_home_page/movies_home_page.dart';
import 'package:demo_application/services/all_providers_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: allproviderList(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movies App',
      home: MoviesHomePage(),
    );
  }
}
