
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                  image: AssetImage("assets/google.png"),
                  width: 20.0),
              onPressed: () {},
              label: Text("Sign in With Google")),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {},
            child:Text.rich(TextSpan(
                text: "Don't have an Account?",
                style: Theme.of(context).textTheme.bodyLarge,

                children:const [
                  TextSpan(
                      text: "Signup",
                      style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
