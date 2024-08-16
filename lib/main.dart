import 'package:chatapp/authinticaton/login_view.dart';
import 'package:chatapp/chat/view/chatscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}
