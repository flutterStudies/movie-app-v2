import 'package:flutter/material.dart';
import 'package:movie_app_v2/features/watchList/watch_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xff242A32),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff242A32),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff242A32),
        ),
      ),

      // home: const MainView(),
      home: const WatchlistView(),
    );
  }
}
