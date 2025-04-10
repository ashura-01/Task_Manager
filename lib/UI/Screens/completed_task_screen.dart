import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemCount: 10,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                
                return TaskCard(
                  taskStatus: TaskStatus.completed,
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
