
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/comments_model.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/AppServices.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

class CommentsPage extends StatefulWidget{
  @override
  CommentsPageState createState()=> CommentsPageState();
}
class CommentsPageState extends State<CommentsPage>{

  List<Comments>? comments;
  bool isLoaded = false;

  @override
  void initState() {
    getCommentsData();
    super.initState();

  }

  getCommentsData()async{
    comments =  await ServiceController().getComments();
    if(comments != null){
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
            comments !=null ? Expanded(
              child: ListView.builder(
                itemCount: comments?.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Colors.deepPurple.shade50,
                    title: Text(comments![index].name, overflow: TextOverflow.ellipsis,),
                    subtitle: Text(comments![index].email, overflow: TextOverflow.ellipsis,),
                    leading: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple.shade900, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        comments![index].id.toString()
                      )
                    ),
                  ),
                );

              }),
            ): Center(child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}