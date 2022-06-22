import 'package:flutter/material.dart';

import '../models/post_model.dart';

class PostListItem extends StatelessWidget{
  final Post post;

  const PostListItem(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color:  Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Text(post.title, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),),
        subtitle: Text(post.body!, overflow: TextOverflow.fade,style: const TextStyle(color: Colors.white70, fontSize: 10),),
        leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              post.id.toString(),style: const TextStyle(color: Colors.white, fontSize: 14),
            )
        ),
      ),
    );
  }

}