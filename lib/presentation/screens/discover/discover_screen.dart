import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scroll_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();
    //Son iguales
    final otroProvider = Provider.of<DiscoverProvider>(context);
    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 10,),)
        //: const Placeholder()
        : VideoScrollView(videos: discoverProvider.videosProvider)
    );
  }
}