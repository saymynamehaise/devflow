import 'package:crudapp/user_form.dart';
import 'package:crudapp/user_list.dart';
import 'package:crudapp/user_provider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserProvider(
      child: MaterialApp(
        title: Text 'CRUD APP',
        home: UserForm(),
        ),
        routes: {
          "/create": (_) => UserForm(),
          "/list": (_) => UserList(),
        },
      ),
    );
  }
}