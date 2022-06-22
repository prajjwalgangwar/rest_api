import 'package:flutter/material.dart';
import 'package:rest_api/models/users_model.dart';

class UserListItem extends StatelessWidget{
  final Users users;

  const UserListItem(this.users, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.pinkAccent.shade100,
          borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Text(users.name, overflow: TextOverflow.ellipsis,),
      ),
    );
  }

}