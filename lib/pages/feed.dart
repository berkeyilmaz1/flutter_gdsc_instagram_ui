import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gdsc_ig/components/feedPageComponents/myPost.dart';
import 'package:gdsc_ig/components/feedPageComponents/myStoryCircle.dart';
import 'package:gdsc_ig/lists.dart';

class FeedPageView extends StatefulWidget {
  const FeedPageView({super.key});

  @override
  State<FeedPageView> createState() => _FeedPageViewState();
}

class _FeedPageViewState extends State<FeedPageView> {
  final String logoPath = "assets/insta_logo.png";

  String getRandomElement(List<String> list) {
    final random = Random();
    final randomIndex = random.nextInt(list.length);
    return list[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            centerTitle: true,
            title: SizedBox(width: 110, child: Image.asset(logoPath)),
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.send_outlined)),
            ],
          ),
        ],
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ListNames.people.length,
                itemBuilder: (BuildContext context, int index) {
                  String randomPicture = getRandomElement(ListNames.iconNames);
                  return myStoryCircle(
                      iconName: randomPicture,
                      nickname: ListNames.people[index]);
                },
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: ListNames.imageNames.length,
                itemBuilder: (BuildContext context, int index) {
                  String randomPerson = getRandomElement(ListNames.people);
                  return myPost(
                    likedNames: "$randomPerson ",
                    peopleNames: "${ListNames.people[index]} ",
                    imagePath: ListNames.imageNames[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
