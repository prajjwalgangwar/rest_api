
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/providers/RemoteService.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

import '../utilities/AppColors.dart';


class UsersPage extends StatelessWidget{

  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.homeApiListTileColor[5],
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10),)
              ),
              child: Center(child: Text('https://jsonplaceholder.typicode.com/posts', style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            Expanded(
              child: Obx(()=>ListView.builder(
                itemCount: userController.userList.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Colors.deepPurple.shade50,
                    title: Text(userController.userList[index].name, overflow: TextOverflow.ellipsis,),
                  ),
                );

              })),
            ),
          ],
        ),
      ),
    );
  }
}