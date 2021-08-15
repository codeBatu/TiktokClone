import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((value) {
        _videoPlayerController.play();
      });
  }

  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  Widget build(BuildContext context) {
    double wsize = MediaQuery.of(context).size.width;
    double hsize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: hsize - 130,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _videoPlayerController.value.isPlaying
                              ? _videoPlayerController.pause()
                              : _videoPlayerController.play();
                        });
                      },
                      child: Container(
                        height: hsize,
                        width: wsize,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: VideoPlayer(_videoPlayerController),
                      ),
                    ),
                    Container(
                      width: wsize,
                      height: hsize,
                      child: Row(
                        children: [
                          Container(
                            width: wsize * .8,
                            height: hsize,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "@batuerken",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "#aliveli",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Can Bonomo - Rüyamda Buluttum",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(23),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://instagram.fist2-4.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist2-4.fna.fbcdn.net&_nc_ohc=nc6MKXXegaIAX9l9YYZ&edm=ABfd0MgBAAAA&ccb=7-4&oh=6c226a1161a26aefd1c3495de99f221f&oe=6120792A&_nc_sid=7bff83"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 37,
                                    ),
                                    Text(
                                      "44444",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.messenger_rounded,
                                      color: Colors.white,
                                      size: 34,
                                    ),
                                    Text(
                                      "44444",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                      size: 34,
                                    ),
                                    Text(
                                      "share",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                        Positioned(
                                          top: 4,
                                          bottom: 4,
                                          left: 4,
                                          right: 4,
                                          child: Center(
                                            child: Container(
                                              width: 37,
                                              height: 37,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://instagram.fist2-4.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist2-4.fna.fbcdn.net&_nc_ohc=nc6MKXXegaIAX9l9YYZ&edm=ABfd0MgBAAAA&ccb=7-4&oh=6c226a1161a26aefd1c3495de99f221f&oe=6120792A&_nc_sid=7bff83"),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
