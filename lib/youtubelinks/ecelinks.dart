import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/7jaa1rlW7Ak',
    'https://youtu.be/z3MlkNUuq9w',
    'https://youtu.be/QpqDBq9zxw4',
    'https://youtu.be/yu8xvHHTij0',
    'https://youtu.be/VQzY8d7OjG8',
    'https://youtu.be/qy6oOGNy8Vc',
    'https://youtu.be/WbDvUitRKi8',
    'https://youtu.be/rjP9kuUaTcc',
    'https://youtu.be/cAu_Qv6rsM8',
    'https://youtu.be/itL2MQqZtqA',
    'https://youtu.be/d3VIDO0S7xk',
    'https://youtu.be/yvH4tgqqu2U',
    'https://youtu.be/QJnzpNgIu08',
    'https://youtu.be/aOKc5_s_8LM',
    'https://youtu.be/_vKeaPHXF9U',
    'https://youtu.be/ApFMXUzc7OM',
    'https://youtu.be/WX0xQWRTPjs',
    'https://youtu.be/06Or9jeeZPM',
    'https://youtu.be/TaTGnbxIMdY',
    'https://youtu.be/XvTyn9qMdUQ'
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
