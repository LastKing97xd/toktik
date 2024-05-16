
import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {

    throw UnimplementedError();
  }

  //este obtiene la informacion de los videos
  @override
  Future<List<VideoPost>> getTrendingVideosByPage() async{
    await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts.map( 
      (x) =>  LocalVideoModel.fromJsonMap(x).toVideoPostEntity()).toList();
    
    return newVideos;
  }
  
}