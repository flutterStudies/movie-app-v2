import 'package:flutter/material.dart';
import 'package:movie_app_v2/core/components/card_list_component.dart';
import 'package:movie_app_v2/core/components/text_montserrat.dart';
import 'package:movie_app_v2/core/preferences/assets.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  static const routeName = '/watchlist';
  @override
  Widget build(BuildContext context) {
    const cardImage = [MainAsset.spiderman1, MainAsset.spiderman2];

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const TextMontserrat(
            text: 'Watch list',
            color: 0xffECECEC,
            weight: FontWeight.w600,
            fontSize: 16.0,
          )),
      body: const CardListComponent(
        cardImage: cardImage,
      ),
    );
  }
}
