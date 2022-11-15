import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.menu) ,onPressed: (){},)  ,
        actions: [
          Icon(Icons.holiday_village),
          Icon(Icons.notification_add),
          Icon(Icons.add),
        ],
        title: const Text("tarek"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Login",style: TextStyle(fontSize: 30,color: Colors.purple),),
            SizedBox(
              width: 30,
              height: 30,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                print(value);
              },
              onFieldSubmitted: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  label: Text("text"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onChanged: (value) {
                print(value);
              },
              onFieldSubmitted: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  label: Text("text"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              color: Colors.cyan,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: const Text(
                  "login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don\'t have an acount?"),
                TextButton(onPressed: () {}, child: Text("Register Now"))
              ],
            )
          ],
        ),
      ),

    );
  }
}
