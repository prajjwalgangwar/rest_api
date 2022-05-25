
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/providers/RemoteService.dart';
import 'package:rest_api/utilities/AppColors.dart';
import 'package:rest_api/utilities/Variables.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

class CommentsPage extends StatelessWidget{

  final CommentController commentController = Get.put(CommentController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.homeApiListTileColor[1],
                borderRadius: BorderRadius.vertical(bottom: const Radius.circular(10),)
              ),
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(1)[1], style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            Expanded(
              child: Obx(()=>ListView.builder(
                itemCount: commentController.commentList.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Colors.deepPurple.shade50,
                    title: Text(commentController.commentList[index].name, overflow: TextOverflow.ellipsis,),
                    subtitle: Text(commentController.commentList[index].email, overflow: TextOverflow.ellipsis,),
                    leading: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple.shade900, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                          commentController.commentList[index].id.toString()
                      )
                    ),
                  ),
                );

              })),
            )
          ],
        ),
      ),
    );
  }
}