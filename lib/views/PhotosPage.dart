
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/RemoteService.dart';
import 'package:rest_api/utilities/AppColors.dart';
import 'package:rest_api/utilities/Constants.dart';
import 'package:rest_api/utilities/Variables.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

import '../models/photos_model.dart';
import '../providers/ServicesController.dart';

class PhotosPage extends StatelessWidget{

  final PhotoController photoController = Get.put(PhotoController())
;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.homeApiListTileColor[3],
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10),
                )
              ),
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(3)[1].toString(),
                style: TextStyle(
                  fontSize: 14,fontWeight:
                FontWeight.w700, color:
                Colors.deepPurple.shade50,
                  letterSpacing: 2, ),)
              ),
            ),
            Expanded(
              child:Obx(()=> ListView.builder(
                itemCount: photoController.photoList.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
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
                            Text(photoController.photoList[index].id.toString(), overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10, color: Colors.red.shade50),),
                            Text(photoController.photoList[index].title, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10, color: Colors.red.shade50),),
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
                              child: Image.network('${photoController.photoList[index].thumbnailUrl}')),
                          Container(
                            width: 200,
                              height: 200,
                              child: Image.network('${photoController.photoList[index].url}')),
                        ],
                      ),

                    ],
                  )
                );

              })),
            )
          ],
        ),
      ),
    );
  }
}

