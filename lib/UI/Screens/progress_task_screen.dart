import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
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
                  taskStatus: TaskStatus.progress,
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
