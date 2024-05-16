
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';


class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videosProvider = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async{

    //await Future.delayed(const Duration(seconds: 2));

    //se va al datasource

    // final List<VideoPost> newVideos = videoPosts.map( 
    //   (x) =>  LocalVideoModel.fromJsonMap(x).toVideoPostEntity()).toList();


    // final List<VideoPost> newVideos2 = videoPosts.map( 
    //   (x) =>  VideoPost(
    //     caption: x['name'], 
    //     videoUrl: x['videoURL']
    //   )
    // ).toList();
    final newVideos = await videosRepository.getTrendingVideosByPage();
    
    videosProvider.addAll(newVideos); 
    initialLoading = false;

    notifyListeners();
  }

}