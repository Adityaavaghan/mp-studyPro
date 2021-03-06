import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/xLetJpcjHS0',
    'https://youtu.be/5_5oE5lgrhw',
    'https://youtu.be/w4LkuBGzPzs',
    'https://youtu.be/zWg7U0OEAoE',
    'https://youtu.be/g1USSZVWDsY',
    'https://youtu.be/PGWZUgzDMYI',
    'https://youtu.be/BmayUdDaDYM',
    'https://youtu.be/KW0UvOW0XIo',
    'https://youtu.be/tORLeHHtazM',
    'https://youtu.be/eWeqqVpgNPg',
    'https://youtu.be/bvOYfDpk940',
    'https://youtu.be/KyMiqaA0ijM',
    'https://youtu.be/gtWw_8VvHjk',
    'https://youtu.be/mRGQylRWAsI',
    'https://youtu.be/TbvhGcf6UJU',
    'https://youtu.be/JZhdUb5F7oY',
    'https://youtu.be/JRsN4Oz36QU',
    'https://youtu.be/6QOKk_pcv3U',
    'https://youtu.be/VbVroFR4mq4',
    'https://youtu.be/uhAUk63tLRM',
    'https://youtu.be/5wRPin4oxCo',
    'https://youtu.be/P4toxusBX9M',
    'https://youtu.be/HjPmZuOXkHQ',
    'https://youtu.be/4OxBvBXon5w',
    'https://youtu.be/cR4rxllyiCs',
    'https://youtu.be/9zpSs845wf8',
    'https://youtu.be/hk5rQs7TQ7E',
    'https://youtu.be/r1-8p11fSPw',
    'https://youtu.be/CIm6RzdoPCI',
    'https://youtu.be/bmyyxNyZKzI',
    'https://youtu.be/Lw5rRctO9js',
    'https://youtu.be/o6YWEsLslKs',
    'https://youtu.be/k9jemw3SZe0',
    'https://youtu.be/kajZRdXi6fA',
    'https://youtu.be/7FtGk9yr66A',
    'https://youtu.be/ng1oliu806U',
    'https://youtu.be/NR0qG64gZUs',
    'https://youtu.be/R36g6qit1bE'
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
