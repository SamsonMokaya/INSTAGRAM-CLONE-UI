import 'package:flutter/material.dart';

class userAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("mokayasamson950 ^",
                    style: TextStyle(color: Colors.black)),
                //Icon(Icons.search, color: Colors.black),
              ],
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(Icons.add_box_outlined, color: Colors.black),
              ),
              Icon(Icons.menu, color: Colors.black),
            ])
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Posts',
                        ),
                      ]),
                      Column(children: [
                        Text(
                          '17',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Followers',
                        ),
                      ]),
                      Column(children: [
                        Text(
                          '22',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Following',
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'K . K . K . K',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.all(2.0),
                    child: Center(child: Text('Edit Profile')),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 10, top: 10),
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(Icons.person_add,
                        ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 219, 219),
                      border: Border.all(
                        color: Color.fromARGB(255, 116, 111, 111),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
