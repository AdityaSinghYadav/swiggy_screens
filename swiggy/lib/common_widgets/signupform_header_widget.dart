import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/signup1.png', height: size.height * 0.25),
        Text(
          "Get On Board!,",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text("Create your profile to start your journey.",
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
