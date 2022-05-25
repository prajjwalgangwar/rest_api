import 'package:rest_api/models/albums_model.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/photos_model.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/models/todos_model.dart';
import 'package:rest_api/utilities/Constants.dart';
import '../models/users_model.dart';

class RemoteService{

  static Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var _postUrl = Uri.parse(AppConstants.urls[0]);
    var response = await client.get(_postUrl);
    if (response.statusCode == 200) {
      var body = response.body;
      return postFromJson(body);
    }
    return null;
  }

  static Future<List<Comments>?> getComments() async {
    var client = http.Client();
    var _commentsUrl = Uri.parse(AppConstants.urls[1]);
    var response = await client.get(_commentsUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return commentsFromJson(body);
    }
    return null;
  }

  static Future<List<Albums>?> getAlbums() async{
    var client = http.Client();
    var _albumsUrl = Uri.parse('https://jsonplaceholder.typicode.com/albums');
    var response = await client.get(_albumsUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return albumsFromJson(body);
    }
    return null;
  }

  static Future<List<Photos>?> getPhotos() async{
    var client = http.Client();
    var _photosUrl = Uri.parse(AppConstants.urls[3]);
    var response = await client.get(_photosUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return photosFromJson(body);
    }
    return null;
  }

  static Future<List<Todos>?> getTodos() async{
    var client = http.Client();
    var _todosUrl = Uri.parse(AppConstants.urls[4]);
    var response = await client.get(_todosUrl);
    if(response.statusCode == 200){
      var body = response.body;
      print('todo data ${todosFromJson(body).length}');
      return todosFromJson(body);
    }
  }

  static Future<List<Users>?> getUsers() async{
    var client = http.Client();
    var _usersUrl = Uri.parse(AppConstants.urls[5]);
    var response = await client.get(_usersUrl);
    if(response.statusCode == 200){
      var body = response.body;
      return usersFromJson(body);
    }
    return null;
  }
}

// class CommentController extends GetxController{
//
//
// }