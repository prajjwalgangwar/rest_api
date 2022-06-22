import 'package:flutter/material.dart';

import '../models/comments_model.dart';

class CommentListItem extends StatelessWidget{
  final Comments comment;

  const CommentListItem(this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.teal.shade300,
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Text(comment.name, overflow: TextOverflow.ellipsis,),
        subtitle: Text(comment.email, overflow: TextOverflow.ellipsis,),
        leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple.shade900, width: 1),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
                comment.id.toString()
            )
        ),
      ),
    );
  }

}