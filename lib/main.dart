import 'package:api_video/views/videoBuid.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageList(),
    );
  }
}

class HomePageList extends StatelessWidget {
  const HomePageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Play"),
        centerTitle: true,
      ),
      body: ListView(children: [
        VideoBuid(looping: true, controller: VideoPlayerController.asset('video/butterfly.mp4'),),
        VideoBuid(looping: true, controller: VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),)
      ],)
    );
  }
}
