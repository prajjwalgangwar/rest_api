
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/providers/RemoteService.dart';
import 'package:rest_api/utilities/Variables.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

import '../models/todos_model.dart';
import '../utilities/AppColors.dart';

class TodosPage extends StatefulWidget{
  @override
  TodosPageState createState()=> TodosPageState();
}
class TodosPageState extends State<TodosPage>{

  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.homeApiListTileColor[4],
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10),)
              ),
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(4)[1], style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            Expanded(
              child: Obx(()=>ListView.builder(
                itemCount: todoController.todoList.length,
                  itemBuilder: (context, index) {
                    return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: CheckboxListTile(
                    activeColor: AppColors.homeApiListTileColor[4],
                    checkColor: Colors.white,
                    tileColor: Colors.transparent,
                    secondary: Icon(IconlyBold.buy, color: AppColors.homeApiListTileColor[4],),
                    title: Text(todoController.todoList[index].title.toString(), overflow: TextOverflow.ellipsis,),
                   subtitle: Text(todoController.todoList[index].title.toString(), overflow: TextOverflow.ellipsis,),
                   onChanged: (bool? value) {  },
                    value: todoController.todoList[index].completed,
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