import 'package:flutter/material.dart';

import '../models/photos_model.dart';

class PhotosListItem extends StatelessWidget{
  final Photos photos;

  const PhotosListItem(this.photos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.red.shade900,
                width: 5
            )
        ),
        child: Column(
          children: [
            Container(
              color: Colors.red.shade900,
              height: 40,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(photos.id.toString(), overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10, color: Colors.red.shade50),),
                  Text(photos.title, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10, color: Colors.red.shade50),),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    child: Image.network(photos.thumbnailUrl)),
                Container(
                    width: 200,
                    height: 200,
                    child: Image.network(photos.url)),
              ],
            ),

          ],
        )
    );
  }

}