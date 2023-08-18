import 'package:flutter/material.dart';
import 'package:sabak_kaitaloo_f10/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    // print(user.atyjonu);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(user.atyjonu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage('https://picsum.photos/200/300'),
          ),
          Text(
            user.kesibi,
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Text(
            '${user.jash}',
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              user.tajriybajolu,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
