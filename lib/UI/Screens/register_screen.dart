import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _fnameTEController = TextEditingController();
  final TextEditingController _lnameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SingleChildScrollView(
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
                  "Join With Us",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter an email';
                    }
                    final RegExp emailRegExp = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                    );

                    if (!emailRegExp.hasMatch(value.trim())) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _fnameTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "First Name",
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please enter your first name";
                    }

                    final RegExp nameRegExp =
                        RegExp(r"^[A-Za-z]+(?:[\s-][A-Za-z]+)*$");

                    if (!nameRegExp.hasMatch(value.trim())) {
                      return "Enter a valid name (letters only)";
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _lnameTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Last name",
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please enter your first name";
                    }

                    final RegExp nameRegExp =
                        RegExp(r"^[A-Za-z]+(?:[\s-][A-Za-z]+)*$");

                    if (!nameRegExp.hasMatch(value.trim())) {
                      return "Enter a valid name (letters only)";
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _mobileTEController,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Mobile",
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please enter your phone number";
                    }

                    final RegExp bdPhoneRegExp =
                        RegExp(r'^(?:\+88|88)?01[3-9]\d{8}$');

                    if (!bdPhoneRegExp.hasMatch(value.trim())) {
                      return "Enter a valid phone number";
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordTEController,
                  decoration: InputDecoration(hintText: "Password"),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Password must contain letter and number";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: _onTapSubmitButton,
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
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(text: "Already have an account?"),
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
          ),
        ),
      )),
    );
  }

  void _onTapSubmitButton() {
    if (_formkey.currentState!.validate()) {
      _registerUser();
    }
  }

  Future<void> _registerUser() async {}

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _fnameTEController.dispose();
    _lnameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();

    super.dispose();
  }
}
