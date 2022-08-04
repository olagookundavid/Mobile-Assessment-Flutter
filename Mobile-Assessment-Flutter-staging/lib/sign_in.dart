import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/custom_registration_screen.dart';
import 'package:mobile_assessment_flutter/welcome_screen.dart';

class SignInScreen extends StatelessWidget {
  static const String id = 'SignIn_screen';
  SignInScreen({Key? key}) : super(key: key);

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: const EdgeInsets.only(top: 60, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeader(
                      header: 'Sign In',
                      subheader: 'Sign in to continue to cargo express'),
                  SizedBox(height: size.height * .02),
                  TextAndContainers(
                      text: 'Phone Number / E-mail', controller: controller1),
                  TextAndContainers(text: 'Password', controller: controller2),
                  SizedBox(height: size.height * 0.05),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Create an Account',
                            style: TextStyle())),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Center(
                    child: CustomButton(
                        text: 'Continue',
                        onPressed: () {},
                        size: Size(size.width * .5, size.height * .1)),
                  )
                ],
              )),
        )
      ],
    );
  }
}