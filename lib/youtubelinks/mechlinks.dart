import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePagemech2 extends StatefulWidget {
  @override
  _HomePagemech2State createState() => _HomePagemech2State();
}

class _HomePagemech2State extends State<HomePagemech2> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/ZTpnJZu1IQw',
    'https://youtu.be/dx5Q1FXaI50',
    'https://youtu.be/6QECO7AE7tk',
    'https://youtu.be/AXir8tpHvOo',
    'https://youtu.be/3dq9Sdsz4go',
    'https://youtu.be/vThsG7mpYsk',
    'https://youtu.be/OwXzR4f8CmU',
    'https://youtu.be/zwpux3fZSnI',
    'https://youtu.be/4LIhP8sX2HU',
    'https://youtu.be/xhU6_Py_J9A',
    'https://youtu.be/nqXWOoPisX4',
    'https://youtu.be/7Zl7sAXfFV0',
    'https://youtu.be/fJWXzVICFqs',
    'https://youtu.be/V084eTu82Ug'
  ];
  bool showItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('References'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Flexible(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: ListView.builder(
                      itemCount: videoID.length,
                      itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(8),
                            child: YoutubePlayer(
                              controller: YoutubePlayerController(
                                  initialVideoId: YoutubePlayer.convertUrlToId(
                                      videoID[index]),
                                  flags: YoutubePlayerFlags(
                                      autoPlay: true,
                                      isLive: true,
                                      mute: false)),
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.blue,
                              progressColors: ProgressBarColors(
                                  playedColor: Colors.blue,
                                  handleColor: Colors.blueAccent),
                            ),
                          )))),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print(videoID);
  }
}
