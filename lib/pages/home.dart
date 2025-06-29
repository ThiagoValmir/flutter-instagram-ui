import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/bubble_stories.dart';
import 'package:flutter_instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "Kevin",
    "Thiago",
    "Ana",
    "Kelly",
    "Jessica",
    "Henrique",
    "Jorge"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Instagram"),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // Stories
            Container(
              height: 130,
              child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return BubbleStories(
                    text: people[index],
                  );
                },
              ),
            ),
            // Posts
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) => UserPosts(
                  name: people[index],
                ),
              ),
            ),
          ],
        ));
  }
}
