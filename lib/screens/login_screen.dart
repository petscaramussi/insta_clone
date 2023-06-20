import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/utils/colors.dart';
import 'package:insta_clone/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                // svg image
                SvgPicture.asset('assets/ic_instagram.svg', height: 64),

                // space
                const SizedBox(height: 64),

                // text field input for e-mail
                TextFieldInput(
                  hintText: 'Enter your e-mail',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                ),

                const SizedBox(
                  height: 24,
                ),

                // text field input for password
                TextFieldInput(
                  hintText: 'Enter your password',
                  textInputType: TextInputType.text,
                  textEditingController: _passwordController,
                  isPass: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                // button login
                InkWell(
                  child: Container(
                    child: const Text('Log in'),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        color: blueColor),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                Flexible(
                  child: Container(),
                  flex: 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text("Don't have an account? "),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          "Sing up.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
                // transitioning to sign
              ]),
        ),
      ),
    );
  }
}
