import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/utilities/AppColors.dart';
import 'package:rest_api/utilities/Constants.dart';
import 'package:rest_api/utilities/Variables.dart';
import 'package:rest_api/widgets/AlbumListItem.dart';
import 'package:rest_api/widgets/CommentListItem.dart';
import 'package:rest_api/widgets/PhotosListItem.dart';
import 'package:rest_api/widgets/PostListItem.dart';
import 'package:rest_api/widgets/TodoListItem.dart';
import 'package:rest_api/widgets/UserListItem.dart';


class ResultPage extends StatelessWidget {

  final PostController postController = Get.find();
  final CommentController commentController = Get.find();
  final AlbumController albumController = Get.find();
  final PhotoController photosController = Get.find();
  final TodoController todosController = Get.find();
  final UserController userController = Get.find();

  final arguments = Get.arguments;

  ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: arguments[1][3],
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(10),)
              ),
              child: Center(child: Text(
                arguments[1][1],
                style: TextStyle(
                  fontSize: 14, fontWeight:
                FontWeight.w700, color:
                Colors.deepPurple.shade50,
                  letterSpacing: 2,),)),
            ),
            Expanded(
              child: Obx(() =>
                  ListView.builder(
                      itemCount:
                      AppConstants.index == 0
                          ? postController.postList.length :
                      AppConstants.index == 1
                          ? commentController.commentList.length :
                      AppConstants.index == 2
                          ? albumController.albumList.length :
                      AppConstants.index == 3
                          ? photosController.photoList.length:
                      AppConstants.index == 4
                          ? todosController.todoList.length :
                      AppConstants.index == 5
                          ? userController.userList.length : 0,
                      itemBuilder: (context, index) {
                        switch (AppConstants.index) {
                          case 0:
                            return PostListItem(postController.postList[index]);
                          case 1:
                            return CommentListItem(
                                commentController.commentList[index]);
                          case 2:
                            return AlbumListItem(
                                albumController.albumList[index]);
                          case 3:
                            return PhotosListItem(
                                photosController.photoList[index]);
                          case 4:
                            return TodoListItem(
                                todosController.todoList[index]);
                          case 5:
                            return UserListItem(userController.userList[index]);
                        }
                        return const Center(child: Text('Error'));
                      })),
            )
          ],
        ),
      ),
    );
  }
}