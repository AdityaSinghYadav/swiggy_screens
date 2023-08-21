import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/const/AppColor.dart';
import 'package:swiggy/ui/signup/widgets/signup_form_widget.dart';

import '../../common_widgets/signupform_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(28),
          child:Column(
            children: [
              const FormHeaderWidget(),
              const SignUpFormWidget(),

              Column(
                children: [
                  const Text("OR"),
                  SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(image: AssetImage("assets/google.png"),width: 20.0),
                      label: Text("Sign In With Google".toUpperCase()))),

                  SizedBox(height: 10),

                  TextButton(onPressed: () {},
                      child: Text.rich(TextSpan(
                        children: [
                          TextSpan(text: "Already have an Account?",style: Theme.of(context).textTheme.bodyLarge),
                          TextSpan(text: "Login".toUpperCase())
                        ]
                      )))

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

