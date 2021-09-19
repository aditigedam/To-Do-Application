import 'package:flutter/material.dart';
import 'package:todo_app/Note/note.dart';
import 'package:todo_app/Task/task.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Task()
    );
  }
}
