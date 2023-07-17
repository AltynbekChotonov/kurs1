// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'user_data.dart';

// ignore: constant_identifier_names
const String KText =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UsersPage'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: users.length,
            itemBuilder: (context, index) {
              final User = users[index];
              return ListTile(
                title: Text(users[index].atyJonu),
                subtitle: Text('${User.kesibi} ${User.jash} jashta'),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(User.profilSurot),
                ),
                // leading: Image.network('https://picsum.photos/300'),
                trailing: const Icon(Icons.chevron_right),
              );
            }));
  }
}
