import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
            userName: 'Ivy Joyce Maurat',
            profileImage: 'assets/images/ivy.jpg',
            currentUserImage: 'assets/images/ivy.jpg',
            postContent: 'NU! LETS GO!',
            date: 'November 21, 2026',
            numOfLikes: 10,
            hasImage: true,
            postImage: 'assets/images/Champion.png',
        ),

        NewsFeedCard(
            userName: 'Robrich Cunanan',
            profileImage: 'assets/images/rob.jpg',
            currentUserImage: 'assets/images/ivy.jpg',
            postContent: 'Freaky Friday!',
            date: 'November 20, 2026',
            numOfLikes: 5,
            hasImage: false,
        ),
      ],
    );
  }
}