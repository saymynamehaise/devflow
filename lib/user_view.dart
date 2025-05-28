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
    }

    return Center(
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
    );
  }
}
