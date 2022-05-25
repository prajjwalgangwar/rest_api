import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/utilities/AppColors.dart';
import 'package:rest_api/views/AlbumsPage.dart';
import 'package:rest_api/views/CommentsPage.dart';
import 'package:rest_api/views/PhotosPage.dart';
import 'package:rest_api/views/PostsPage.dart';
import 'package:rest_api/views/TodosPage.dart';
import 'package:rest_api/views/UsersPage.dart';

class Variables {
  static Map<String, List> apiExampleList = {
    'Post Model API': [
      '1',
      'Posts',
      IconlyBold.send,
      AppColors.homeApiListTileColor[0]
    ],
    'Comment Model API': [
      '2',
      'Comments',
      IconlyBold.discount,
      AppColors.homeApiListTileColor[1]
    ],
    'Album Model API': [
      '3',
      'Albums',
      IconlyBold.category,
      AppColors.homeApiListTileColor[2]
    ],
    'Photo Model API': [
      '4',
      'Photos',
      IconlyBold.image,
      AppColors.homeApiListTileColor[3]
    ],
    'Todo Model API': [
      '5',
      'Todos',
      IconlyBold.paper,
      AppColors.homeApiListTileColor[4]
    ],
    'User Model API': [
      '6',
      'Users',
      IconlyBold.user_2,
      AppColors.homeApiListTileColor[5]
    ],
  };

  static route(index) {
    index == 0
        ? Get.to(
            () => PostsPage(),
            transition: Transition.circularReveal,
            duration: const Duration(milliseconds: 500),
          )
        : index == 1
            ? Get.to(
                () => CommentsPage(),
                transition: Transition.circularReveal,
                duration: const Duration(milliseconds: 500),
              )
            : index == 2
                ? Get.to(
                    () => AlbumsPage(),
                    transition: Transition.cupertinoDialog,
                    duration: const Duration(milliseconds: 500),
                  )
                : index == 3
                    ? Get.to(
                        () => PhotosPage(),
                        transition: Transition.leftToRightWithFade,
                        duration: const Duration(milliseconds: 500),
                      )
                    : index == 4
                        ? Get.to(
                            () => TodosPage(),
                            transition: Transition.fadeIn,
                            duration: const Duration(milliseconds: 500),
                          )
                        : index == 5
                            ? Get.to(
                                () => UsersPage(),
                                transition: Transition.rightToLeftWithFade,
                                duration: const Duration(milliseconds: 500),
                              )
                            : null;
  }

// static serviceCall (index) async{
//   index == 0 ? await PostController().getPosts()
//       // : index == 1 ? await ServiceController().getComments()
//       // : index == 2 ?  await ServiceController().getAlbums()
//       // : index == 3 ?  await ServiceController().getComments()
//       // : index == 4 ?  await ServiceController().getComments()
//       // : index == 5 ?  await ServiceController().getComments()
//       : null;
// }
}
