import 'package:flutter/material.dart';
import 'package:miss_bengal_flutter/Screens/Auth%20Screens/registerUI.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: sdp(context, 20),
                ),
              ),
              Text(
                'Enter your credentials',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sdp(context, 10),
                ),
              ),
              height20,
              kContentBox(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kTextField(
                      context,
                      label: 'Phone Number',
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.phone,
                    ),
                    height20,
                    kTextField(
                      context,
                      label: 'Password',
                      hintText: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.phone,
                    ),
                    height20,
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            NavPush(context, RegisterUI());
                          },
                          child: Text(
                            'Create One!',
                            style: TextStyle(color: Colors.cyanAccent),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              height20,
              kSubmitButton(
                onPressed: () {},
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
