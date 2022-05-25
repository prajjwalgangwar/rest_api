import 'package:get/get.dart';
import 'package:rest_api/models/albums_model.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/photos_model.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/models/todos_model.dart';
import 'package:rest_api/utilities/Constants.dart';
import 'package:rest_api/views/PhotosPage.dart';
import 'package:rest_api/views/UsersPage.dart';

import '../models/users_model.dart';

class ServiceController extends GetxController{

  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var _postUrl = Uri.parse(AppConstants.urls[0]);
    var response = await client.get(_postUrl);
    if (response.statusCode == 200) {
      var body = response.body;
      return postFromJson(body);
    }
    return null;
  }

  Future<List<Comments>?> getComments() async {
    var client = http.Client();
    var _commentsUrl = Uri.parse(AppConstants.urls[1]);
    var response = await client.get(_commentsUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return commentsFromJson(body);
    }
    return null;
  }

  Future<List<Albums>?> getAlbums() async{
    var client = http.Client();
    var _albumsUrl = Uri.parse(AppConstants.urls[2]);
    var response = await client.get(_albumsUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return albumsFromJson(body);
    }
    return null;
  }

  Future<List<Photos>?> getPhotos() async{
    var client = http.Client();
    var _photosUrl = Uri.parse(AppConstants.urls[3]);
    var response = await client.get(_photosUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return photosFromJson(body);
    }
    return null;
  }

  Future<List<Todos>?> getTodos() async{
    var client = http.Client();
    var _photosUrl = Uri.parse(AppConstants.urls[3]);
    var response = await client.get(_photosUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return todosFromJson(body);
    }
  }

  Future<List<Users>?> getUsers() async{
    var client = http.Client();
    var _photosUrl = Uri.parse(AppConstants.urls[3]);
    var response = await client.get(_photosUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return usersFromJson(body);
    }
    return null;
  }




}

// class CommentController extends GetxController{
//
// }