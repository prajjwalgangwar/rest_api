
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/AppServices.dart';
import 'package:rest_api/views/CommentsPage.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

import '../models/albums_model.dart';

class AlbumsPage extends StatefulWidget{
  @override
  AlbumsPageState createState()=> AlbumsPageState();
}
class AlbumsPageState extends State<AlbumsPage>{

  List<Albums>? albums;
  bool isLoaded = false;

  @override
  void initState() {
     getAlbumsData();
    super.initState();

  }

  getAlbumsData()async{
    albums =  await ServiceController().getAlbums();
    if(albums != null){
      setState(() {
        isLoaded = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade800,
                borderRadius: BorderRadius.vertical(bottom: const Radius.circular(10),)
              ),
              child: Center(child: Text('https://jsonplaceholder.typicode.com/posts', style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: albums?.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Colors.deepPurple.shade50,
                    title: Text(albums![index].title, overflow: TextOverflow.ellipsis,),
                           leading: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple.shade900, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),

                    ),
                  ),
                );

              }),
            )
          ],
        ),
      ),
    );
  }
}