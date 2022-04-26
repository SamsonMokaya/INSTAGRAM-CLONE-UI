import 'package:flutter/material.dart';

class shopOptions extends StatelessWidget {
  late final String text;
  shopOptions({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ClipRRect(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              ),
            ),
            height: 60,
            padding: EdgeInsets.all(8),
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
