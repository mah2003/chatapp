import 'package:chatapp/chat/data/data_of_chat.dart';
import 'package:flutter/material.dart';

class Items_of_chat_widget extends StatelessWidget {
  const Items_of_chat_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return (ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(modelList[index].image.toString())),
            title: Text(
              modelList[index].name.toString().split(" ")[0],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              modelList[index].lastmassege.toString(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            trailing: Text(
              modelList[index].time.toString(),
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ));
        },
        separatorBuilder: (context, index) {
          return (SizedBox(
            height: 12,
          ));
        },
        itemCount: modelList.length);
  }
}
