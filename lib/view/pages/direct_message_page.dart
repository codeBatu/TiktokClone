import 'package:flutter/material.dart';

class DMPage extends StatefulWidget {
  DMPage({Key? key}) : super(key: key);

  @override
  _DMPageState createState() => _DMPageState();
}

class _DMPageState extends State<DMPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    "Direct Message",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 220,
          ),
          Container(
            height: 160,
            width: 420,
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.messenger,
                    size: 70,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Message your friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Share videos or start a conversation",
                    style: TextStyle(fontWeight: FontWeight.values[2]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
