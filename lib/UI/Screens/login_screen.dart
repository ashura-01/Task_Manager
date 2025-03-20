import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/Screens/register_screen.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Get Started With",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(  
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 24,
                )),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: _onTapForgotPasswordButton, child: Text("Forgot Password?")),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: "Don't have account?"),
                          TextSpan(
                              text: " Sign up",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void _onTapForgotPasswordButton(){}
  void _onTapSignUpButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
  }
}
