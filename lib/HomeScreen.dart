import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notification_add),
        title: const Text("hello tarek"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),

      body: Container(
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Container(
                        color: Colors.purpleAccent,
                        child: Text("data1",
                            style: TextStyle(
                                backgroundColor: Colors.lime, fontSize: 30)))),
                Container(child: Text("data2sdg")),
                Container(child: Text("data33fffffffff")),
                Container(
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-600w-1725825019.jpg"),
                        width: 200  ,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Container(
                          margin: EdgeInsetsDirectional.only(top: 5,bottom: 20,end: 10,start: 15),
                          padding: EdgeInsetsDirectional.only(top: 5,bottom: 20,end: 10,start: 15),

                          width: double.infinity,
                        color: Colors.black.withOpacity(.4),
                        child: Text(textAlign: TextAlign.center,"data",style: TextStyle(color: Colors.white,fontSize: 30),))
                    ],
                  ),
                )
              ]),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
      //     BottomNavigationBarItem(icon: Icon(Icons.access_alarm_rounded)),
      //     BottomNavigationBarItem(icon: Icon(Icons.accessible_forward_outlined))
      //   ],
      // ),
    );
  }
}

