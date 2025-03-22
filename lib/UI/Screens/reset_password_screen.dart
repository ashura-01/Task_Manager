import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/Screens/login_screen.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() =>
      _ForgotPasswordVerifyEmailScreenState();
}

class _ForgotPasswordVerifyEmailScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();

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
              height: 100,
            ),
            Text(
              "Your Email Address",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "A 6 digit varification pin will send to your email address",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.black38, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: _newPasswordController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _confirmNewPasswordController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Confrim Password",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: _onTapSubmitButton, child: Text("Confrim")),
            SizedBox(
              height: 48,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: "Have account?"),
                          TextSpan(
                              text: " Sign in",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTapSignInButton),
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

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();

    super.dispose();
  }

  void _onTapSubmitButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  // end of the code
}
