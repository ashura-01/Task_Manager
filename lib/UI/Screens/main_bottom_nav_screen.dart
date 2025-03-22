import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.new_label), label: 'New'),
        NavigationDestination(icon: Icon(Icons.timelapse), label: 'Progress'),
        NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancelled'),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
