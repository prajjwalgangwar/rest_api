import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/providers/ServicesController.dart';
import 'package:rest_api/utilities/AppColors.dart';
import 'package:rest_api/utilities/Variables.dart';


class PostsPage extends StatelessWidget{
  
  final PostController postController = Get.put(PostController());

  PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: AppColors.homeApiListTileColor[0],
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10),)
              ),
              child: Center(child: Text(Variables.apiExampleList.values.elementAt(0)[1], style: TextStyle(
                fontSize: 14,fontWeight:
              FontWeight.w700, color:
              Colors.deepPurple.shade50,
                letterSpacing: 2, ),)),
            ),
            Expanded(
              child: Obx (()=>ListView.builder(
                  itemCount: postController.postList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:  Colors.deepPurple.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ListTile(
                        tileColor: Colors.transparent,
                        title: Text(postController.postList[index].title, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),),
                        subtitle: Text(postController.postList[index].body!, overflow: TextOverflow.fade,style: const TextStyle(color: Colors.white70, fontSize: 10),),
                        leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text(
                                postController.postList[index].id.toString(),style: const TextStyle(color: Colors.white, fontSize: 14),
                            )
                        ),
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
// class PostsPageState extends State<PostsPage>{
//
//   final ServiceController postController = Get.find<ServiceController>();
//   List<Post>? posts;
//   bool isLoaded = false;
//
//   @override
//   void initState() {
//     getPostData();
//     super.initState();
//
//   }
//
//   getPostData()async{
//     posts =  await postController.getPosts();
//     if(posts != null){
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               height: 60,
//               decoration: BoxDecoration(
//                 color: AppColors.homeApiListTileColor[0],
//                 borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10),)
//               ),
//               child: Center(child: Text(Variables.apiExampleList.values.elementAt(0)[1], style: TextStyle(
//                 fontSize: 14,fontWeight:
//               FontWeight.w700, color:
//               Colors.deepPurple.shade50,
//                 letterSpacing: 2, ),)),
//             ),
//             posts !=null ? Expanded(
//               child: ListView.builder(
//                 itemCount: posts?.length,
//                   itemBuilder: (context, index) {
//                   return Container(
//                   margin: EdgeInsets.all(10),
//                   child: ListTile(
//                     tileColor: Colors.deepPurple.shade50,
//                     title: Text(posts![index].title, overflow: TextOverflow.ellipsis,),
//                     subtitle: Text(posts![index].body!, overflow: TextOverflow.ellipsis,),
//                     leading: Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.deepPurple.shade900, width: 1),
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                       child: Text(
//                         posts![index].id.toString()
//                       )
//                     ),
//                   ),
//                 );
//
//               }),
//             ): Center(child: CircularProgressIndicator())
//           ],
//         ),
//       ),
//     );
//   }
// }