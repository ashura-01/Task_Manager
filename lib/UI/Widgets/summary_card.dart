import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.title,
    required this.count,
  });

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Text(count.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Text(title,style: TextStyle(fontSize: 11),)
        ],),
      ),
    );
  }
}