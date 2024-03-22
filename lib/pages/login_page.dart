import 'package:flutter/material.dart';
import 'package:gdsc_ig/components/loginPageComponents/dontHaveAcc.dart';
import 'package:gdsc_ig/components/loginPageComponents/myTextField.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String fbText = "Facebook ile devam et";
    String emailHintText = "Phone number, username or email";
    String passwordHintText = "Password";
    String forgotPasswordText = "Forgot Password?";
    String buttonText = "Log In";
    String igPath = "insta_logo";
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                  width: 200,
                  height: 100,
                  child: Image.asset("assets/$igPath.png")),
              MyTextField(
                hinttext: emailHintText,
              ),
              const SizedBox(
                height: 5,
              ),
              MyTextField(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                obscureText: obscureText,
                hinttext: passwordHintText,
                icon: obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    forgotPasswordText,
                    style: TextStyle(
                        color: Colors.blue.shade400,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    width: width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                        child: Text(
                      buttonText,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ))),
              ),
              const SizedBox(
                height: 20,
              ),
              const orDivider(),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/fb_logo.png"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    fbText,
                    style: TextStyle(
                        color: Colors.blue.shade400,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ]),
              const Spacer(),
              const DontHaveAcc(),
            ],
          ),
        ),
      ),
    );
  }
}

class orDivider extends StatelessWidget {
  const orDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            indent: 20.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        Text(
          "OR",
          style: TextStyle(color: Colors.blueGrey),
        ),
        Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 20.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
