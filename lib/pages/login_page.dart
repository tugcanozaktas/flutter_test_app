import 'package:flutter/material.dart';
import 'package:test_drive/components/my_button.dart';
import 'package:test_drive/components/my_text_field.dart';
import 'package:test_drive/pages/home_page.dart';

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
        builder: (context) => const HomePage(),
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
            //Logo
            Icon(
              Icons.newspaper,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 5,
            ),
            //Name of the App
            Text(
              "TugcaNews",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 25,
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            //Email Text field
            MyTextField(
              obscureText: false,
              hintText: "Email",
              controller: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Password Text field
            MyTextField(
              obscureText: true,
              hintText: "Password",
              controller: passwordController,
            ),
            const SizedBox(
              height: 10,
            ),
            //Login Button
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: MyButton(onTap: login, text: "Login"),
            ),

            //Not a member text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member ?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  width: 5,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
