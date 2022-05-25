
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api/models/post_model.dart';
import 'package:rest_api/providers/AppServices.dart';
import 'package:rest_api/widgets/CustomAppBar.dart';

class UsersPage extends StatefulWidget{
  @override
  UsersPageState createState()=> UsersPageState();
}
class UsersPageState extends State<UsersPage>{

  List<Post>? posts;
  bool isLoaded = false;

  @override
  void initState() {
    getPostData();
    super.initState();

  }

  getPostData()async{
    posts =  await ServiceController().getPosts();
    if(posts != null){
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
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10),)
              ),
              child: Center(child: Text('https://jsonplaceholder.typicode.com/posts', style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade50),)),
            ),
            posts !=null ? Expanded(
              child: ListView.builder(
                itemCount: posts?.length,
                  itemBuilder: (context, index) {
                  return Container(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Colors.deepPurple.shade50,
                    title: Text(posts![index].title, overflow: TextOverflow.ellipsis,),
                    subtitle: Text(posts![index].body!, overflow: TextOverflow.ellipsis,),
                    leading: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple.shade900, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        posts![index].id.toString()
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