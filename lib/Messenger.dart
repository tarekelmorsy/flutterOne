import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String message;
  UserModel({
    required this.name,
    required this.id,
    required this.message
});
}
class Messenger extends StatelessWidget {
   List<UserModel> users=[
     UserModel(name: "name", id: 1111, message: " Hello iam tarek elmorsy"),
     UserModel(name: "name2", id: 1111, message: " Hello iam tarek elmorsy"),
     UserModel(name: "name3", id: 1111, message: " Hello iam tarek elmorsy"),
     UserModel(name: "name4", id: 1111, message: " Hello iam tarek elmorsy"),
     UserModel(name: "name5", id: 1111, message: " Hello iam tarek elmorsy"),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/314896480_5325823534212151_4435139485220580074_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGZizMVjJIhjbYZWjtBJvD0WyefSApx5uRbJ59ICnHm5AZlbgBLhHiQDrJH4jFxUEDEFWijStlAj6_7Q-t4gdE8&_nc_ohc=CWrE3RI_zGIAX8ZNEys&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCtFIYPITP1H3BEIzSaZNCnyTIPUVQcZhyC5tSgoblaLA&oe=63776E0E'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "chat",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blueAccent,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  ))),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blueAccent,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                child: Row(
                  children: const [Icon(Icons.search), Text("Search")],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder:(context, index)=> SizedBox(width: 20,),
                  itemBuilder: (context, index) => buildStoreItem(users[index]),
                  itemCount: users.length,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  separatorBuilder:(context, index)=> SizedBox(height: 20,),
                  itemBuilder: (context, index) => buildChatItem(users[index]),
                  itemCount: users.length,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem(UserModel users) => Container(
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/314896480_5325823534212151_4435139485220580074_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGZizMVjJIhjbYZWjtBJvD0WyefSApx5uRbJ59ICnHm5AZlbgBLhHiQDrJH4jFxUEDEFWijStlAj6_7Q-t4gdE8&_nc_ohc=CWrE3RI_zGIAX8ZNEys&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCtFIYPITP1H3BEIzSaZNCnyTIPUVQcZhyC5tSgoblaLA&oe=63776E0E'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 2, end: 2),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${users.name}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${users.message}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget buildStoreItem(UserModel users) => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/314896480_5325823534212151_4435139485220580074_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGZizMVjJIhjbYZWjtBJvD0WyefSApx5uRbJ59ICnHm5AZlbgBLhHiQDrJH4jFxUEDEFWijStlAj6_7Q-t4gdE8&_nc_ohc=CWrE3RI_zGIAX8ZNEys&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCtFIYPITP1H3BEIzSaZNCnyTIPUVQcZhyC5tSgoblaLA&oe=63776E0E'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 2, end: 2),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${users.name}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
