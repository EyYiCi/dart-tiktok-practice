import 'package:flutter/material.dart';
import 'package:tiktok/config/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: const Color.fromARGB(211, 185, 252, 2)),
        Container(color: const Color.fromARGB(255, 5, 113, 139)),
        Container(color: Colors.indigo),
        Container(color: const Color.fromARGB(255, 146, 12, 224)),

      ],
    );
  }
}