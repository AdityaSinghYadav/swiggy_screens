import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person_outline_rounded))),

            const SizedBox(height: 20),

            TextFormField(
                decoration: const InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email_outlined))),

            const SizedBox(height: 20),

            TextFormField(
                decoration: const InputDecoration(
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.mobile_friendly))),

            const SizedBox(height: 20),


            TextFormField(
                decoration: const InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.fingerprint))),

            SizedBox(
              height: 20),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("SignUp")))

          ],
        ),
      ),
    );
  }
}
