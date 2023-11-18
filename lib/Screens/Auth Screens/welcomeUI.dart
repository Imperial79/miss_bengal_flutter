import 'package:flutter/material.dart';
import 'package:miss_bengal_flutter/Screens/Auth%20Screens/loginUI.dart';
import 'package:miss_bengal_flutter/Screens/homeUI.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';

class WelcomeUI extends StatefulWidget {
  const WelcomeUI({super.key});

  @override
  State<WelcomeUI> createState() => _WelcomeUIState();
}

class _WelcomeUIState extends State<WelcomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0xff1f2937),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Images/hero-bg.png'),
              fit: BoxFit.cover,
              opacity: .3,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/Images/hero.png',
                    width: sdp(context, 200),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          'assets/Images/logo.png',
                          width: sdp(context, 150),
                        ),
                      ),
                      Text(
                        'Smart • Talent • Beauty',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: sdp(context, 12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      height20,
                      kSubmitButton(
                        onPressed: () {
                          NavPush(context, LoginUI());
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Participate',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
