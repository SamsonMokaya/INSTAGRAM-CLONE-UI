import 'package:flutter/material.dart';

class shopGrid extends StatelessWidget {
  const shopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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