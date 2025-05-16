import 'package:flutter/material.dart';
import 'package:task_manager/UI/Screens/update_profile_screen.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({super.key, required this.fromProfileScreen});

  final bool? fromProfileScreen;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppBar(
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: () {
          if (fromProfileScreen ?? false) {
            return;
          }
          _onTapProfile(context);
        },
        child: Row(
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
                    style: textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  Text("fahim@gmail.com",
                      style: textTheme.bodySmall!.copyWith(color: Colors.white))
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                )),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  void _onTapProfile(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
  }
}
