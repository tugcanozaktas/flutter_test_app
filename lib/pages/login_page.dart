import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_drive/components/my_button.dart';
import 'package:test_drive/components/my_divider.dart';
import 'package:test_drive/components/Home%20Page/App%20Bar/my_logo.dart';
import 'package:test_drive/components/Home%20Page/Login%20Page/my_text_field.dart';
import 'package:test_drive/components/Home%20Page/Login%20Page/signup_options.dart';
import 'package:test_drive/pages/new_home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NewHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyLogo(),
            //Logo

            const SizedBox(
              height: 80,
            ),
            //Name of the App
            Text("Log In",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 25,
                  ),
                )),

            const SizedBox(
              height: 20,
            ),
            //Email Text field
            MyTextField(
              obscureText: false,
              hintText: "Email",
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            //Password Text field
            MyTextField(
              obscureText: true,
              hintText: "Password",
              controller: passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            //Login Button
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: MyButton(onTap: login, text: "Login"),
            ),
            const SizedBox(
              height: 5,
            ),
            //Not a member text

            const MyDivider(text: "login"),
            const SizedBox(
              height: 15,
            ),
            const SignUpOptions(),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: widget.onTap,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create new account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
