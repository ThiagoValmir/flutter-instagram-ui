import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  final List<String> UserPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.orange[100],
            ),
          );
        });
  }
}
