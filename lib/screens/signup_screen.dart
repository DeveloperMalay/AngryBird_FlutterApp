import 'package:angrybird/constant/routes.dart';
import 'package:angrybird/mythems/theme.dart';
import 'package:angrybird/widgets/animation.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: topPadding,
                ),
                const SizedBox(
                  height: 10,
                ),
                const AnimatedImage(),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.cardLight,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //for name field
                        TextFormField(
                          controller: name,
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            labelText: 'Name',
                            labelStyle: TextStyle(color: AppColors.textFaded),
                          ),
                        ),
                        //for Email Field
                        TextFormField(
                          controller: email,
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: AppColors.textFaded),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //for password Field
                        TextFormField(
                          controller: password,

                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: AppColors.textFaded),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                              }
                            },
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(AppColors.cardDark),
                              backgroundColor: MaterialStateProperty.all(
                                AppColors.cardColor,
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(29),
                                  side: const BorderSide(
                                    color: AppColors.cardDark,
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              'SignUp',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, signinRoute, (route) => false);
                          },
                          child: const Text("Already Have an Account? SignIn"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
