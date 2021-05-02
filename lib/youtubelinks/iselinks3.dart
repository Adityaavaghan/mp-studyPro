import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  TextEditingController _addItemController = TextEditingController();

  List<String> videoID = [
    'https://youtu.be/eIrMbAQSU34',
    'https://youtu.be/eTXd89t8ngI',
    'https://youtu.be/njy7NGYzsvM',
    'https://youtu.be/HYAosZptldA',
    'https://youtu.be/Eng8Oi-p2r4',
    'https://youtu.be/IJ0xCDR_Dlw',
    'https://youtu.be/HSp0UX9Z8Zw',
    'https://youtu.be/Qtw3nVWqf-w',
    'https://youtu.be/I_aJgAmDYPk',
    'https://youtu.be/mkQsfdMITM8',
    'https://youtu.be/Nw7NyvuwOTM',
    'https://youtu.be/CQMaVTO0Cfk',
    'https://youtu.be/sjsq5UL5oFs',
    'https://youtu.be/AipADVI3OG0',
    'https://youtu.be/l3s_6gbNFTg',
    'https://youtu.be/w9BrD4eanxQ',
    'https://youtu.be/WOUpjal8ee4',
    'https://youtu.be/9_CJYK47d6M',
    'https://youtu.be/FK4a6XrM2P0',
    'https://youtu.be/5W568dNIVPM',
    'https://youtu.be/9Kk1dGkpGPI',
    'https://youtu.be/E-LMhKEwL_w',
    'https://youtu.be/haI01OWwFPk',
    'https://youtu.be/n7D5El5-pEU',
    'https://youtu.be/4NGi9WzLTFg',
    'https://youtu.be/VtDBsy_enkE',
    'https://youtu.be/neTl7g7dGqI',
    'https://youtu.be/PKLvLJcSs8A',
    'https://youtu.be/IZJWI0d0zw8',
    'https://youtu.be/WkfoBYV_zX4',
    'https://youtu.be/0-nM4IoQXsY',
    'https://youtu.be/JWFWbSH2Q_M',
    'https://youtu.be/Dhe1Q_N89EE',
    'https://youtu.be/TnJ_bzLfUXk',
    'https://youtu.be/rzfiE0UuZnQ',
    'https://youtu.be/pv1C0_6k78A',
    'https://youtu.be/tpP8EQE8DNU',
    'https://youtu.be/tpP8EQE8DNU',
    'https://youtu.be/g5Kphf1exzg'
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
