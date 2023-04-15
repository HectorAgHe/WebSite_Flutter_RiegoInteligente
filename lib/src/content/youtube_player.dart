import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayer extends StatefulWidget {
  const YoutubePlayer({super.key, required YoutubePlayerController controller});

  @override
  State<YoutubePlayer> createState() => _YoutubePlayerState();

  static convertUrlTold(videoURL) {}
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  final youtubeVideo = 'https://www.youtube.com/watch?v=pFG8yu7kdAs';

  late YoutubePlayerController _controller;

  get videoURL => youtubeVideo;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlTold(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [YoutubePlayer(controller: _controller)],
    ));
  }
}
