import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnAndEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tarek elmorsy"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Container(
                    color: Colors.black,
                    child: Text(
                      "hello1",
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ))),
            Container(
                child: Container(
                    color: Colors.green,
                    child: Text(
                      "hello1",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ))),
            Container(
                child: Container(
                    color: Colors.lightBlueAccent,
                    child: Text(
                      "hello1",
                      style: TextStyle(color: Colors.red, fontSize: 35),
                    ))),
            Container(
                child: Container(
                    color: Colors.teal,
                    child: Text(
                      "hello1",
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ))),
            Container(
                child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width*.5,


                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
                        ),
                        Container(
                          width: double.infinity,
                            padding: EdgeInsetsDirectional.all(5),
                            color: Colors.black.withOpacity(.3),
                            child: Text(
                              "data",textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
