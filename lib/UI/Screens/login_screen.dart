import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/Screens/forgot_password_verify_email_screen.dart';
import 'package:task_manager/UI/Screens/main_bottom_nav_screen.dart';
import 'package:task_manager/UI/Screens/register_screen.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paswordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formkey,
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
                controller: _emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _paswordController,
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: _onTapSignInButton,
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
                    TextButton(
                        onPressed: _onTapForgotPasswordButton,
                        child: Text("Forgot Password?")),
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignUpButton),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  void _onTapForgotPasswordButton() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ForgotPasswordVerifyEmailScreen()));
  }

  void _onTapSignUpButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> MainBottomNavScreen()), (predicate)=>false);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _paswordController.dispose();
    super.dispose();
  }
}
