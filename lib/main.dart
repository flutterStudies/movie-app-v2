import 'package:flutter/material.dart';
import 'package:movie_app_v2/features/detail/detail_view.dart';
import 'package:movie_app_v2/features/main/main_view.dart';
import 'package:movie_app_v2/features/search/search_view.dart';
import 'package:movie_app_v2/features/splash/splash_view.dart';
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
      home: const SplashView(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case MainView.routeName:
            return MaterialPageRoute(builder: (context) {
              return const MainView();
            });
          case SearchView.routeName:
            return MaterialPageRoute(builder: (context) {
              return const SearchView();
            });
          case WatchlistView.routeName:
            return MaterialPageRoute(builder: (context) {
              return const WatchlistView();
            });
          case DetailView.routeName:
            return MaterialPageRoute(builder: (context) {
              return const DetailView();
            });
          default:
            return MaterialPageRoute(builder: (context) {
              return const Scaffold(
                body: Center(
                    child: Text(
                  '404 Page not found',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                )),
              );
            });
        }
      },
    );
  }
}
