import 'package:flutter/material.dart';
import 'package:movie_app_v2/core/components/input_search.dart';
import 'package:movie_app_v2/core/components/text_poppins.dart';
import 'package:movie_app_v2/core/extensions/sizedbox.dart';
import 'package:movie_app_v2/core/preferences/assets.dart';
import 'package:movie_app_v2/core/preferences/dimens.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    const tabList = [
      Tab(
        text: 'Now playing',
      ),
      Tab(
        text: 'Upcoming',
      ),
      Tab(
        text: 'Top rated',
      ),
      Tab(
        text: 'Popular',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const TextPoppins(
          text: 'What do you want to watch?',
          color: 0xffFFFFFF,
          fontSize: Dimens.dp18,
          weight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const InputSerach(),
            Dimens.dp20.height,
            const Expanded(
              child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      dividerColor: Colors.transparent,
                      isScrollable: true,
                      indicatorColor: Color(0xff3A3F47),
                      tabs: tabList,
                      labelColor: Color(0xffFFFFFF),
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                        child: TabBarView(children: [
                      ItemTabBarViews(),
                      ItemTabBarViews(),
                      ItemTabBarViews(),
                      ItemTabBarViews(),
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemTabBarViews extends StatelessWidget {
  const ItemTabBarViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const movieList = [
      MainAsset.movie1,
      MainAsset.movie2,
      MainAsset.movie3,
      MainAsset.movie4,
      MainAsset.movie5,
      MainAsset.movie6
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 18.0,
            crossAxisSpacing: 18.0,
            childAspectRatio: 100 / 146,
          ),
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              // borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                movieList[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
