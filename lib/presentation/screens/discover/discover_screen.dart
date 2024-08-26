

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/presentation/providers/discover_provider.dart';
import 'package:tiktok/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {


    // Estas son dos formas de lograr lo mismo; la elección depende de tu criterio. En nuestro ejercicio será un watch
    /*
      final discoverProvider = context.read<DiscoverProvider>();
      final otroProvider = Provider.of<DiscoverProvider>(context, listen: false);
    */

    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading ? const Center(child: CircularProgressIndicator( strokeWidth: 2))
      : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}