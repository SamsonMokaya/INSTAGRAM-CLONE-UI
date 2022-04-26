import 'package:flutter/material.dart';

class userPosts extends StatelessWidget {

  late final String name;

  userPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Row(
          children: [
            //profile photo
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(width: 10,),
            Text(name),
          ],
        ),
        Icon(Icons.more_vert),
      ],
    ),

        ),

        Container(
          height: 250,
          color: Colors.grey[300],
        ),

        // below post
        Padding(
            padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),

                  Icon(Icons.share),
                ],
              ),

              Icon(Icons.bookmark),
            ],
          ),
        ),

        //Liked by
        Padding(
            padding: const EdgeInsets.only(left: 16.0,),
          child: Row(
            children: [
              Text('Liked by '),
              Text('chemutai ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text('3,712 others ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //Caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0,),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Follow for more. ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Student at Strathmore university pursuing Computer science',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )

      ],

    );
  }
}
