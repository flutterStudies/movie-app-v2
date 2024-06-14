import 'package:flutter/material.dart';
import 'package:movie_app_v2/features/home/home_view.dart';
import 'package:movie_app_v2/features/search/search_view.dart';
import 'package:movie_app_v2/features/watchList/watch_list_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = '/home';
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomeView(),
      SearchView(),
      WatchlistView(),
    ];
    return Scaffold(
      body: pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
