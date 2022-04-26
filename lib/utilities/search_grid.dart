import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (_, index) {
        return Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
