import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/shop_options.dart';
import 'package:instagram_ui_clone/utilities/shop_grid.dart';

class userShop extends StatefulWidget {
  const userShop({Key? key}) : super(key: key);

  @override
  State<userShop> createState() => _userShopState();
}

class _userShopState extends State<userShop> {
  final List options = [
    'Your Story',
    'Tai',
    'Baby Boy',
    'Charity',
    'Luke',
    'Salomon',
    'Mutua'
  ];
  final List people = [
    'Shops',
    'Videos',
    "Editors's picks",
    'Collections',
    'Guides',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Shop", style: TextStyle(color: Colors.black)),
                      //Icon(Icons.search, color: Colors.black),
                    ],
                  ),
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.bookmark_border_outlined,
                          color: Colors.black),
                    ),
                    Icon(Icons.menu, color: Colors.black),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
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
                      child: Text("Search Shops",
                          style: TextStyle(
                              color: Color.fromARGB(255, 83, 83, 83))),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return shopOptions(
                  text: people[index],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            
          ),

          Expanded(
            child: shopGrid(),
          )
          
          
        ],
      ),
    );
  }
}
