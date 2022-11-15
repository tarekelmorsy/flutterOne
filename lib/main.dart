import 'package:flutter/material.dart';

import 'BmiScreen.dart';
import 'ColumnAndEx.dart';
import 'Conter.dart';
import 'HomeScreen.dart';
import 'Login.dart';
import 'Messenger.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {

    return MaterialApp(home: BmiScreen(),
      debugShowCheckedModeBanner: false,);
  }

}