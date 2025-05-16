import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';
import 'package:task_manager/UI/Widgets/t_m_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: TMAppBar(fromProfileScreen: false,),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Add new Task",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Subject",
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: "Description",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),

                SizedBox(height: 16,),

                ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined,color: Colors.white,size: 24,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
