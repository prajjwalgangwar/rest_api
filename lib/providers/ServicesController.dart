import 'package:get/get.dart';
import 'package:rest_api/models/albums_model.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/photos_model.dart';
import 'package:rest_api/models/todos_model.dart';
import 'package:rest_api/models/users_model.dart';
import 'package:rest_api/providers/RemoteService.dart';

import '../models/post_model.dart';

class PostController extends GetxController {
  var postList = <Post>[].obs;
  var commentList = <Comments>[].obs;
  var albumList = <Albums>[].obs;
  var photoList = <Photos>[].obs;
  var todoList = <Todos>[].obs;
  var userList = <Users>[].obs;

  @override
  void onInit() {
    getPostData();
    super.onInit();
  }

  void getPostData() async {
    var posts = await RemoteService.getPosts();
    if (posts != null) {
      postList.value = posts;
    }
  }

  void getCommentData() async {
    var comments = await RemoteService.getComments();
    if (comments != null) {
      commentList.value = comments;
    }
  }
}

class CommentController extends GetxController {
  var commentList = <Comments>[].obs;

  @override
  void onInit() {
    getCommentData();
    super.onInit();
  }

  void getCommentData() async {
    var comments = await RemoteService.getComments();
    if (comments != null) {
      commentList.value = comments;
    }
  }
}

class AlbumController extends GetxController {
  var albumList = <Albums>[].obs;

  @override
  void onInit() {
    getAlbumData();
    super.onInit();
  }

  void getAlbumData() async {
    var albums = await RemoteService.getAlbums();
    if (albums != null) {
      albumList.value = albums;
    }
  }
}

class PhotoController extends GetxController {
  var photoList = <Photos>[].obs;

  @override
  void onInit() {
    getPhotoData();
    super.onInit();
  }

  void getPhotoData() async {
    var photos = await RemoteService.getPhotos();
    if (photos != null) {
      photoList.value = photos;
    }
  }
}

class TodoController extends GetxController {
  var todoList = <Todos>[].obs;

  @override
  void onInit() {
    getTodoData();
    super.onInit();
  }

  void getTodoData() async {
    var todos = await RemoteService.getTodos();
    if (todos != null) {
      todoList.value = todos;
    }
  }
}

class UserController extends GetxController {
  var userList = <Users>[].obs;

  @override
  void onInit() {
    getUserData();
    super.onInit();
  }

  void getUserData() async {
    var users = await RemoteService.getUsers();
    if (users != null) {
      userList.value = users;
    }
  }
}
