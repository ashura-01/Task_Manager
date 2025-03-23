import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/summary_card.dart';
import 'package:task_manager/UI/Widgets/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSummarySection(),
            ListView.separated(
              itemCount: 10,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TaskCard();
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              SummaryCard(
                title: "New Task",
                count: 40,
              ),
              SummaryCard(
                title: "Progress",
                count: 40,
              ),
              SummaryCard(
                title: "Completed",
                count: 40,
              ),
              SummaryCard(
                title: "Cancelled",
                count: 40,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          )
        ],
        
      ),
    );
  }
}
