import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_v2/core/components/text_montserrat.dart';
import 'package:movie_app_v2/core/components/text_poppins.dart';
import 'package:movie_app_v2/core/extensions/sizedbox.dart';
import 'package:movie_app_v2/core/preferences/assets.dart';
import 'package:movie_app_v2/core/preferences/dimens.dart';
import 'package:movie_app_v2/features/detail/models/actor.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    const avatarList = [
      MainAsset.avatar1,
      MainAsset.avatar2,
      MainAsset.avatar3,
      MainAsset.avatar4,
    ];

    List<Actors> actorList = [
      Actors(image: MainAsset.avatar1, name: 'Tom Holland'),
      Actors(image: MainAsset.avatar2, name: 'Zendaya'),
      Actors(image: MainAsset.avatar3, name: 'Benedict Cumberbatch'),
      Actors(image: MainAsset.avatar4, name: 'Brad Pitt'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const TextMontserrat(
          color: 0xffECECEC,
          fontSize: 16.0,
          weight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              MainAsset.spidermanBaner,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(MainAsset.spidermanFloating),
                      const SizedBox(
                        width: 12,
                      ),
                      const Expanded(
                        child: TextPoppins(
                          color: 0xffFFFFFF,
                          text: 'Spiderman No Way Home',
                          fontSize: 18.0,
                          weight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Dimens.dp16.height,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconTextDetail(
                        icon: MainAsset.calendar,
                        text: '2021',
                        pipe: '|',
                      ),
                      IconTextDetail(
                        icon: MainAsset.time,
                        text: '148 Minutes',
                        pipe: '|',
                      ),
                      IconTextDetail(
                        icon: MainAsset.ticket,
                        text: 'Action',
                      ),
                    ],
                  ),
                  Dimens.dp24.height,
                  Expanded(
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          const TabBar(
                            tabs: [
                              Tab(
                                text: "About Movie",
                              ),
                              Tab(
                                text: "Reviews",
                              ),
                              Tab(
                                text: "Cast",
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(children: [
                              ItemGridview(actorList: actorList),
                              ItemGridview(actorList: actorList),
                              ItemGridview(actorList: actorList),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemGridview extends StatelessWidget {
  final List<Actors> actorList;
  const ItemGridview({
    super.key,
    required this.actorList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18.0,
          childAspectRatio: 120 / 123,
        ),
        itemCount: actorList.length,
        itemBuilder: (context, i) {
          return Column(children: [
            Image.asset(
              actorList[i].image,
              width: 100.0,
              height: 100.0,
            ),
            Dimens.dp8.height,
            TextPoppins(
              text: actorList[i].name,
              fontSize: 12.0,
              weight: FontWeight.w500,
              color: 0xffFFFFFF,
            )
          ]);
        });
  }
}

class IconTextDetail extends StatelessWidget {
  const IconTextDetail({super.key, this.icon, this.text, this.pipe});

  final String? text;
  final String? pipe;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon ?? ""),
        Dimens.dp4.width,
        TextMontserrat(
          text: text ?? "",
          color: 0xff92929D,
          fontSize: 12.0,
          weight: FontWeight.w500,
        ),
        Dimens.dp12.width,
        Text(
          pipe ?? "",
          style: const TextStyle(color: Color(0xff92929D)),
        ),
        Dimens.dp12.width,
      ],
    );
  }
}
