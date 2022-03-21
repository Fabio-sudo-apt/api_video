import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoBuid extends StatefulWidget {
  final VideoPlayerController controller;
  final bool looping;

  const VideoBuid({Key? key, required this.controller, required this.looping})
      : super(key: key);

  @override
  State<VideoBuid> createState() => _VideoBuidState();
}

class _VideoBuidState extends State<VideoBuid> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.controller,
        aspectRatio: 9 / 9,
        autoInitialize: true,
        looping: widget.looping,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.red.shade800),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Chewie(controller: _chewieController),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
    _chewieController.dispose();
  }
}
