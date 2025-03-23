import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/task_card.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
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
                  taskStatus: TaskStatus.cancelled,
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
