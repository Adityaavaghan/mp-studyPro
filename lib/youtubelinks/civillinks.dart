import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePagecivil2 extends StatefulWidget {
  @override
  _HomePagecivil2State createState() => _HomePagecivil2State();
}

class _HomePagecivil2State extends State<HomePagecivil2> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/oAzwClT1GRQ',
    'https://youtu.be/Jxon65jIeqA',
    'https://youtu.be/6U0MCsJXRL0',
    'https://youtu.be/ZSq6l_kEECQ',
    'https://youtu.be/4_eXUl1G4hM',
    'https://youtu.be/Ub4Da46IFRw',
    'https://youtu.be/Qr0BaI5O8Yg',
    'https://youtu.be/8wgwSZNxNUo',
    'https://youtu.be/G7pDrGU0Q_Q',
    'https://youtu.be/H51EDzcsnxo',
    'https://youtu.be/b26SRMv1eV4',
    'https://youtu.be/6xzJvdt8RTM',
    'https://youtu.be/7qJsoU7hW4Y',
    'https://youtu.be/6YJTLJ0jweg',
    'https://youtu.be/oDeQ0A2S1JI'
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
