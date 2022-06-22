import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/todos_model.dart';
import 'package:rest_api/models/users_model.dart';

import '../utilities/AppColors.dart';

class TodoListItem extends StatelessWidget{
  final Todos todos;

  const TodoListItem(this.todos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(10)
      ),
      child: CheckboxListTile(
        activeColor: AppColors.homeApiListTileColor[4],
        checkColor: Colors.white,
        tileColor: Colors.transparent,
        secondary: Icon(IconlyBold.buy, color: AppColors.homeApiListTileColor[4],),
        title: Text(todos.title.toString(), overflow: TextOverflow.ellipsis,),
        subtitle: Text(todos.title.toString(), overflow: TextOverflow.ellipsis,),
        onChanged: (bool? value) {  },
        value: todos.completed,
      ),
    );
  }

}