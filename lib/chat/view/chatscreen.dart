import 'package:chatapp/chat/Widgets/items_of_chat_widget.dart';
import 'package:chatapp/chat/Widgets/states_veiw.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text("Chat App",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_sharp,
                    color: Colors.white,
                  ))
            ],
          ),
          body: Column(children: [
            states_view(),

            //chats
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Items_of_chat_widget()),
            ),
          ]),
        ));
  }
}
