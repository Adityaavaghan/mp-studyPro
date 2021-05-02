import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage4 extends StatefulWidget {
  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/GwIo3gDZCVQ',
    'https://youtu.be/gmvvaobm7eQ',
    'https://youtu.be/8jazNUpO3lQ',
    'https://youtu.be/J_LnPL3Qg70',
    'https://youtu.be/vsWrXfO3wWw',
    'https://youtu.be/KfnhNlD8WZI',
    'https://youtu.be/9yl6-HEY7_s',
    'https://youtu.be/fwY9Qv96DJY',
    'https://youtu.be/zM4VZR0px8E',
    'https://youtu.be/J5bXOOmkopc',
    'https://youtu.be/PHxYNGo8NcI',
    'https://youtu.be/FB5EdxAGxQg',
    'https://youtu.be/ok2s1vV9XW0',
    'https://youtu.be/gJo0uNL-5Qw',
    'https://youtu.be/EItlUEPCIzM',
    'https://youtu.be/PPeaRc-r1OI',
    'https://youtu.be/nHIUYwN-5rM',
    'https://youtu.be/HdlDYng8g9s',
    'https://youtu.be/VqKq78PVO9g',
    'https://youtu.be/rdfbcdP75KI',
    'https://youtu.be/_drqJ9SFCgU',
    'https://youtu.be/gMoJIH0prL4',
    'https://youtu.be/cbqZa_1vzcg',
    'https://youtu.be/oCiRv94GMEc',
    'https://youtu.be/Q5JyawS8f5Q',
    'https://youtu.be/rD2xumR98w8',
    'https://youtu.be/qWXXHjV3JHI',
    'https://youtu.be/m1dQ38qDABw',
    'https://youtu.be/kwKfWBb6frs',
    'https://youtu.be/sWAPtaBZKBQ',
    'https://youtu.be/5Uc_m9CRWro',
    'https://youtu.be/Mubj_fqiAv8',
    'https://youtu.be/yfsTZbwgMSE',
    'https://youtu.be/VhRtaziEWd4',
    'https://youtu.be/ER2It2mIagI',
    'https://youtu.be/PQCE9ChuIDY',
    'https://youtu.be/ag3DLKsl2vk',
    'https://youtu.be/IfRMV2MY9n0'
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
