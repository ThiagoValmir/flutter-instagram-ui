import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shop",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.menu),
                  ],
                ),
              ],
            )),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                    padding: EdgeInsets.all(4.0),
                    color: Colors.grey[300],
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey[600]),
                        SizedBox(width: 10),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    )),
              )),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
