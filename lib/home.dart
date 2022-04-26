import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/bubble_stories.dart';
import 'package:instagram_ui_clone/utilities/userPosts.dart';

class userHome extends StatelessWidget {
  final List people = ['Your Story','Tai','Baby Boy','Charity','Luke','Salomon','Mutua'];
  final List postpeople = ['Clarice','Tai','Baby Boy','Charity','Luke','Salomon','Mutua'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black),),
            Row(
              children: [
                      Icon(Icons.add, color: Colors.black,),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Icon(Icons.favorite, color: Colors.black,),
                      ),
                      Icon(Icons.share, color: Colors.black,),
                      
              ],
            ),
          ],
        ),

      ),
      body: Column(
        children: [

          //Stories
          Container(
            height: 130,
            child:
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index){
                return bubbleStories(text: people[index],);
              },
            ),
          ),

          //User posts
          Expanded(
              child: ListView.builder(
                  itemCount: postpeople.length,
                  itemBuilder: (context, index) {
                    return userPosts(name: postpeople[index],);
                  }),
          )

          ],
      ),
    );
  }
}
