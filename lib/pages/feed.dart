import 'package:flutter/material.dart';
import 'package:gdsc_ig/components/feedPageComponents/myPost.dart';
import 'package:gdsc_ig/components/feedPageComponents/myStoryCircle.dart';

class FeedPageView extends StatefulWidget {
  const FeedPageView({super.key});

  @override
  State<FeedPageView> createState() => _FeedPageViewState();
}

class _FeedPageViewState extends State<FeedPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            SizedBox(width: 110, child: Image.asset("assets/insta_logo.png")),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const myStoryCircle();
              },
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const myPost();
              },
            ),
          )
        ],
      ),
    );
  }
}
