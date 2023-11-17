import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/constants.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';
import 'package:simple_shadow/simple_shadow.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  bool isMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff1f2937),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SimpleShadow(
                            color: Colors.black,
                            sigma: 10,
                            child: Image.asset(
                              'assets/Images/logo.png',
                              width: sdp(context, 60),
                            ),
                          ),
                          Spacer(),
                          kSubmitButton(
                            onPressed: () {},
                            child: Text('Join'),
                          ),
                          width10,
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isMenuOpen = !isMenuOpen;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: SvgPicture.asset('assets/icons/menu.svg'),
                            ),
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: Duration(milliseconds: 200),
                        child: isMenuOpen
                            ? Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    alignment: WrapAlignment.start,
                                    runAlignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          'About us',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Pageants',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Contact us',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Contact us',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
              ),
              height20,
              CarouselSlider(
                items: List.generate(
                  3,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: kRadius(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://as1.ftcdn.net/v2/jpg/03/72/07/92/1000_F_372079224_I5T312gZKM2elhtwjLPqBLg0xSs2lAgu.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 16 / 7, viewportFraction: .9),
              ),
              height20,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming auditions',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: sdp(context, 18),
                        color: Colors.white,
                      ),
                    ),
                    height5,
                    Text(
                      'Checkout the upcoming auditions so that you do not miss them',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: sdp(context, 10),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
