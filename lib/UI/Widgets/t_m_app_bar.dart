import 'package:flutter/material.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TMAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MD. Fahim Moontashir",
                  style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700,color: Colors.white ),
                ),
                Text("fahim@gmail.com",style: textTheme.bodySmall!.copyWith(color: Colors.white))
              ],
            ),
          ),
    
          IconButton(onPressed: (){}, icon: Icon(Icons.logout,)),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}