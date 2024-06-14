import 'package:flutter/material.dart';
import 'package:movie_app_v2/core/components/card_list_component.dart';
import 'package:movie_app_v2/core/components/input_search.dart';
import 'package:movie_app_v2/core/components/text_poppins.dart';
import 'package:movie_app_v2/core/preferences/assets.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    const cardImage = [MainAsset.spiderman1, MainAsset.spiderman2];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.warning),
          )
        ],
        centerTitle: true,
        title: const TextPoppins(
          text: 'Search',
          color: 0xffECECEC,
          fontSize: 16.0,
          weight: FontWeight.w600,
        ),
      ),
      body: const CardListComponent(
        cardImage: cardImage,
        inputserach: InputSerach(),
      ),
    );
  }
}
