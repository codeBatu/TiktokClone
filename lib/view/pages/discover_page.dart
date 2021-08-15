import 'dart:ui';

import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                height: 25,
                width: 330,
                color: Colors.grey[200],
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search), labelText: "Ara"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 13,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.5)),
                          child: Text(
                            "#",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        title: Text(
                          "Oyun Zamanı",
                          style: TextStyle(fontWeight: FontWeight.values[1]),
                        ),
                        trailing: Container(
                          height: 22,
                          width: 41,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Text(
                                "29.2M>",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ));
  }
}
 /* Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg"),
                  fit: BoxFit.cover),
            ),
          ), */