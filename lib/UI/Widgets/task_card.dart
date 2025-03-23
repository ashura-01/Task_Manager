import 'package:flutter/material.dart';

enum TaskStatus {
  newtask,
  progress,
  completed,
  cancelled,
}

class TaskCard extends StatelessWidget {
  
  final TaskStatus taskStatus;
  const TaskCard({
    super.key,
    required this.taskStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title will be here",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text("Decription will be here"),
            Text("Date:12/03/2005"),
            Row(
              children: [
                Chip(
                  label: Text(
                    "New",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: _getStatusChipColor(),
                  side: BorderSide.none,
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 20,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: 20,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Color _getStatusChipColor() {
    Color color;
    switch (taskStatus) {

      case TaskStatus.newtask:
        color = Colors.blue;

      case TaskStatus.progress:
        color = Colors.pink;

      case TaskStatus.completed:
        color = Colors.green;

      case TaskStatus.cancelled:
        color = Colors.red;
    }
    return color;
  }
}
