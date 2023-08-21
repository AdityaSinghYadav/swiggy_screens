import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: "E Mail")),

              const SizedBox(
                height: 20.0,
              ),

              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint),
                      labelText: "Password",
                      suffixIcon: IconButton(
                          onPressed:null,
                          icon: Icon(Icons.remove_red_eye_sharp)))),

              const SizedBox(height: 10),


              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(context: context,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          builder:(context) => Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Make Selection",style: Theme.of(context).textTheme.displayLarge),
                              Text("Select one of the options given below to reset your password",
                                style: Theme.of(context).textTheme.bodyMedium,),
                              const SizedBox(height: 30),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.green.shade200,
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.mail_outline_rounded,size: 60.0),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("E-Mail",style: Theme.of(context).textTheme.titleLarge),
                                          Text("Reset Via E-Mail Verification",style: Theme.of(context).textTheme.bodyMedium),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        );
                      },
                      child: const Text("Forgot Password"))),
              const SizedBox(height: 10,),

              SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login".toUpperCase()),
                ),)

            ],
          ),
        ));
  }
}
