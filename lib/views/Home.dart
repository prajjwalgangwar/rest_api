import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/utilities/Constants.dart';
import 'package:rest_api/utilities/Variables.dart';
import 'package:rest_api/views/ResultPage.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

import '../providers/ServicesController.dart';

class Home extends StatelessWidget{

   Home({Key? key}) : super(key: key);
  final PostController postController = Get.put(PostController());
  final CommentController commentController = Get.put(CommentController());
  final AlbumController albumController = Get.put(AlbumController());
  final PhotoController photosController = Get.put(PhotoController());
  final TodoController todosController = Get.put(TodoController());
  final UserController userController = Get.put(UserController());



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade900,
        body: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView.builder(
                itemCount: Variables.apiExampleList.keys.length,
                  itemBuilder: (context, index) {
                return InkWell(
                  onTap: ()async{
                    AppConstants.index = index;
                    Get.to(()=> ResultPage(), arguments: [index, Variables.apiExampleList.values.elementAt(index)]);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                        color:  Variables.apiExampleList.values.elementAt(index)[3],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.orange,
                        width: 2
                      )
                    ),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Variables.apiExampleList.values.elementAt(index)[2], color: Colors.orange.shade50,),

                        Text(
                          '${Variables.apiExampleList.values.elementAt(index)[1]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.orange.shade50,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.orange.shade50,)
                          ),
                            child: Text(' ' + index.toString() + ' ', style: TextStyle(
                                color: Colors.orange.shade50,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                letterSpacing: 1
                            ),), )
                      ],
                    ),
                  ),
                );
              }),
            ),

          ],
        ),
      ),
    );
  }
}