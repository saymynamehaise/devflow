import 'package:crudapp/field_form.dart';
import 'package:flutter/material.dart';

import 'user.dart';
import 'user_provider.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void save() {
      UserProvider userProvider = UserProvider.of(context) as UserProvider;

      User user = User(
        name: controllerName.text, 
        email: controllerEmail.text, 
        password: controllerPassword.text
      );

      int usersLength = userProvider.users.length;

      userProvider.users.insert(usersLength, user);

      Navigator.popAndPushNamed(context, "/list");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Create User"),
        actions: [
          Container(
            child: TextButton(
              child: Text('User List'),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/list");
              },
            ),
            decoration: BoxDecoration(
              color: Colors.white
              borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              margin: EdgeInsets.all(8),
          )
        ],
      ),

      body: Center(
        child: Column(
          children: [
            FieldForm(
              label: 'Name',
              isPassword: false,
             controller: controllerName
             ), 
             FieldForm(
              label: 'Email',
              isPassword: false,
             controller: controllerName
             ),
             FieldForm(
              label: 'Password',
              isPassword: true,
             controller: controllerPassword
             ), 
             SizedBox(
              width: double.infinity,
               child: TextButton(
                onPressed: save,
                child: Text('Salvar'),
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white), 
                ),
                ),
             )
          ],
        )
      ),
    );
  }
}
