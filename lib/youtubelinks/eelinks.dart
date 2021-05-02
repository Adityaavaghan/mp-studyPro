import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/X2y1LI9Tq3w',
    'https://youtu.be/25pZZ-SBxBI',
    'https://youtu.be/U2qGYTL-SVo',
    'https://youtu.be/TvAiMHBaKbg',
    'https://youtu.be/K27WkDoXFZw',
    'https://youtu.be/w5Pc8bFtMkw',
    'https://youtu.be/5yl6OVOcm-o',
    'https://youtu.be/6CmlszPfrVY',
    'https://youtu.be/Kx-cm8zogi8',
    'https://youtu.be/2zp-0n5JuoQ',
    'https://youtu.be/uDktWh0CEMY',
    'https://youtu.be/s9nAyq6CZFU',
    'https://youtu.be/XbWm49hA_zE',
    'https://youtu.be/mMyg5y8tEYU'
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
