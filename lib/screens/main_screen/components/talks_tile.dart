import 'package:flutter/material.dart';
import 'package:whats_flutter/data/model/user_model.dart';

class TalksTile extends StatelessWidget {
  final UserModel user;

  const TalksTile(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://cdn.dribbble.com/users/1577045/screenshots/4914645/media/028d394ffb00cb7a4b2ef9915a384fd9.png?compress=1&resize=400x300&vertical=top',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListTile(
            contentPadding: const EdgeInsets.all(4),
            title: Text(user.name!),
            subtitle: Text(user.email!),
          ),
        )
      ],
    );
  }
}
