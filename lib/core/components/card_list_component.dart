import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app_v2/core/components/text_montserrat.dart';
import 'package:movie_app_v2/core/components/text_poppins.dart';
import 'package:movie_app_v2/core/extensions/sizedbox.dart';
import 'package:movie_app_v2/core/preferences/assets.dart';
import 'package:movie_app_v2/core/preferences/dimens.dart';

class CardListComponent extends StatelessWidget {
  const CardListComponent(
      {super.key, required this.cardImage, this.inputserach});

  final List<String> cardImage;
  final Widget? inputserach;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(29.0),
      child: Column(
        children: [
          inputserach ?? Dimens.dp2.height,
          Dimens.dp24.height,
          Expanded(
              child: ListView.builder(
                  itemCount: cardImage.length,
                  itemBuilder: (context, i) {
                    return CardList(
                      image: cardImage[i],
                    );
                  }))
        ],
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key, this.image});

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Image.asset(image!),
          Dimens.dp12.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextPoppins(
                text: 'Spiderman',
                weight: FontWeight.w400,
                color: 0xffFFFFFF,
                fontSize: 16.0,
              ),
              Dimens.dp14.height,
              const IconTextItems(
                text: '9.5',
                color: 0xffFF8700,
              ),
              const IconTextItems(
                text: 'Action',
                color: 0xffEEEEEE,
              ),
              const IconTextItems(
                text: '2019',
                color: 0xffEEEEEE,
              ),
              const IconTextItems(
                text: '139 minutes',
                color: 0xffEEEEEE,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconTextItems extends StatelessWidget {
  const IconTextItems({super.key, required this.color, required this.text});

  final String? text;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          MainAsset.time,
          colorFilter: ColorFilter.mode(Color(color), BlendMode.srcIn),
        ),
        TextMontserrat(
          text: text ?? '',
          color: 0xffFF8700,
          fontSize: 12.0,
          weight: FontWeight.w600,
        ),
        Dimens.dp4.height,
      ],
    );
  }
}
