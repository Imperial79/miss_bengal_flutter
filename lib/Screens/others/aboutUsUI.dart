import 'package:flutter/material.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';

class AboutUsUI extends StatefulWidget {
  const AboutUsUI({super.key});

  @override
  State<AboutUsUI> createState() => _AboutUsUIState();
}

class _AboutUsUIState extends State<AboutUsUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sdp(context, 20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: double.infinity,
                height: sdp(context, 200),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/7Xm3ZvUGksg/maxresdefault.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
