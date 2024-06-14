import 'package:flutter/material.dart';
import 'package:movie_app_v2/features/splash/splash_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    // const pages = [];
    return Scaffold(
      // body: pages[indexPage],
      body: const SplashView(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
