import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/search_grid.dart';


class userSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Color.fromARGB(255, 214, 211, 211),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Search",
                      style: TextStyle(color: Color.fromARGB(255, 83, 83, 83))),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Grid(),
    );
  }
}
