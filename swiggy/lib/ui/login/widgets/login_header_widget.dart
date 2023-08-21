import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/login.png', height: size.height * 0.22),
        Text(
          "Welcome Back,",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text("Make it work, make it right, make it fast.",
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}

