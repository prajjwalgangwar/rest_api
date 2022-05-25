
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/providers/RemoteService.dart';
import 'package:rest_api/utilities/Variables.dart';
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
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(5)[1], style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            Expanded(
              child: Obx(()=>ListView.builder(
                itemCount: userController.userList.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.shade100,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    tileColor: Colors.transparent,
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