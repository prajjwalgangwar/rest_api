import 'package:flutter/material.dart';
import 'package:rest_api/models/albums_model.dart';

class AlbumListItem extends StatelessWidget{

  final Albums albums;

  const AlbumListItem(this.albums, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.brown.shade300,
          borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Text(
          albums.title,
          overflow: TextOverflow.ellipsis,
        ),
        leading: Text(albums.toString()),
        trailing: Text(albums.userId.toString()),
      ),
    );
  }

}