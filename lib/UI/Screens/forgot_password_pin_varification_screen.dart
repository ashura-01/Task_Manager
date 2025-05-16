import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/UI/Screens/login_screen.dart';
import 'package:task_manager/UI/Screens/reset_password_screen.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class ForgotPasswordPinVarificationScreen extends StatefulWidget {
  const ForgotPasswordPinVarificationScreen({super.key});

  @override
  State<ForgotPasswordPinVarificationScreen> createState() =>
      _ForgotPasswordPinVarificationScreenState();
}

class _ForgotPasswordPinVarificationScreenState
    extends State<ForgotPasswordPinVarificationScreen> {
  final TextEditingController _pinInputController = TextEditingController();

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
              "PIN Verification",
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
            PinCodeTextField(
              length: 6,
              obscureText: false,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
                activeColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: Colors.black,
                selectedColor: Colors.green,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              controller: _pinInputController,
              onCompleted: (v) {
                //print("Completed");
              },
              appContext: context,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _onTapSubmitButton,
              child: Text(
                "Verify",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
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

  void _onTapSubmitButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
        (predicate) => false);
  }

  void _onTapSignInButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  void dispose() {
    _pinInputController.dispose();
    super.dispose();
  }
}
