import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10),
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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
                  backgroundColor: Colors.blue,
                  side: BorderSide.none,
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
