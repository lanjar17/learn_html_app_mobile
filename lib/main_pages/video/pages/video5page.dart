import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video5Page extends StatefulWidget {
  const Video5Page({Key? key}) : super(key: key);
  static String videoID = 'LQf_Jj7jbCI';

  @override
  _Video5PageState createState() => _Video5PageState();
}

class _Video5PageState extends State<Video5Page> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: Video5Page.videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller.addListener(() {
      if (_controller.value.isFullScreen != isFullScreen) {
        setState(() {
          isFullScreen = _controller.value.isFullScreen;
          _videoMetaData = _controller.metadata;
        });
      }
    });
    _videoMetaData = const YoutubeMetaData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !isFullScreen
          ? AppBar(
              title: const Text(
                "Video Pembelajaran",
                style: TextStyle(fontFamily: "Roboto"),
              ),
              backgroundColor: Theme.of(context).colorScheme.secondary,
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Tambahkan padding di sini
        child: YoutubePlayerBuilder(
          onExitFullScreen: () {
            SystemChrome.setPreferredOrientations(DeviceOrientation.values);
          },
          player: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
            bottomActions: [
              CurrentPosition(), // Menampilkan waktu video saat ini
              ProgressBar(isExpanded: true), // Menampilkan progress bar
              RemainingDuration(), // Menampilkan sisa waktu video
              FullScreenButton(), // Tombol full screen
            ],
            topActions: <Widget>[
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () {},
              ),
            ],
            onReady: () {
              _controller.addListener(() {
                if (_controller.value.isFullScreen) {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                    DeviceOrientation.landscapeRight
                  ]);
                } else {
                  SystemChrome.setPreferredOrientations(
                      DeviceOrientation.values);
                }
              });
            },
          ),
          builder: (context, player) => ListView(
            children: [
              player,
              FullScreenButton(
                controller: _controller,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
