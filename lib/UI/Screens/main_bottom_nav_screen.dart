import 'package:flutter/material.dart';
import 'package:task_manager/UI/Screens/cancelled_task_screen.dart';
import 'package:task_manager/UI/Screens/completed_task_screen.dart';
import 'package:task_manager/UI/Screens/new_task_screen.dart';
import 'package:task_manager/UI/Screens/progress_task_screen.dart';
import 'package:task_manager/UI/Widgets/t_m_app_bar.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TMAppBar(fromProfileScreen: false,),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.new_label), label: 'New'),
            NavigationDestination(
                icon: Icon(Icons.timelapse), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
            NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancelled'),
          ]),

      body: _screens[_selectedIndex],

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      
    );
  }
}
