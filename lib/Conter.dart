


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Conter extends StatefulWidget {

  const Conter({Key? key}) : super(key: key);

  @override
  State<Conter> createState() => _ConterState();
}

class _ConterState extends State<Conter> {
  int cont=1;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter"),),
      body: Center(

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
            TextButton(onPressed: (){
              setState(() {
                cont--;
              });
            }
                , child: Text("MINUS"))
            ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("$cont",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            ),
            TextButton(onPressed: (){
              setState(() {
                cont++;
              });
            }, child: Text("PLUS"))

          ],
        ),
      ),

    );
  }
}
