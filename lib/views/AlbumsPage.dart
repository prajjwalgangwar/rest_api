import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/providers/RemoteService.dart';

import '../models/albums_model.dart';
import '../utilities/AppColors.dart';
import '../utilities/Variables.dart';

class AlbumsPage extends StatefulWidget {
  const AlbumsPage({Key? key}) : super(key: key);

  @override
  AlbumsPageState createState() => AlbumsPageState();
}

class AlbumsPageState extends State<AlbumsPage> {

  final AlbumController albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: AppColors.homeApiListTileColor[2],
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10),)
              ),
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(2)[1], style: TextStyle(
                fontSize: 14,fontWeight:
              FontWeight.w700, color:
              Colors.deepPurple.shade50,
                letterSpacing: 2, ),)),
            ),
            Expanded(
              child: Obx(()=>ListView.builder(
                  itemCount: albumController.albumList.length,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        tileColor: Colors.deepPurple.shade50,
                        title: Text(
                          albumController.albumList[index].title,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: Text(albumController.albumList[index].id.toString()),
                        trailing: Text(albumController.albumList[index].userId.toString()),
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
