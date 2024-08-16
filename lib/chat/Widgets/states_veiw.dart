import 'package:chatapp/chat/data/data_of_chat.dart';
import 'package:flutter/material.dart';

class states_view extends StatelessWidget {
  const states_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "States",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 110,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(modelList[index].image ?? ' '),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.indigo,
                              radius: 12,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        modelList[index].name.toString().split(" ")[0],
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return (const SizedBox(
                    width: 8,
                  ));
                },
                itemCount: modelList.length),
          ),
        ],
      ),
    );
  }
}
