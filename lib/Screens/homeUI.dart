import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miss_bengal_flutter/Screens/others/aboutUsUI.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/constants.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xff1f2937),
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Image.asset(
            'assets/Images/logo.png',
            width: sdp(context, 60),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isMenuOpen = !isMenuOpen;
              });
            },
            icon: SvgPicture.asset('assets/icons/menu.svg'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _homeMenu(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          autoPlay: true,
                          aspectRatio: 16 / 7,
                          viewportFraction: .9),
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
                          height20,
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: kRadius(10),
                              color: Colors.black.withOpacity(.5),
                              border: Border.all(color: Colors.cyanAccent),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: sdp(context, 100),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://as1.ftcdn.net/v2/jpg/03/72/07/92/1000_F_372079224_I5T312gZKM2elhtwjLPqBLg0xSs2lAgu.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                height20,
                                Text(
                                  'Post Title',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: sdp(context, 15),
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Posted',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: sdp(context, 10),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' 2 days ago',
                                        style: TextStyle(
                                          color: Colors.cyanAccent,
                                          fontSize: sdp(context, 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                height10,
                                Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                  style: TextStyle(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                height20,
                                kSubmitButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Participate',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeMenu() {
    return Container(
      width: double.infinity,
      color: Color(0xff1f2937),
      child: AnimatedSize(
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
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          NavPush(context, AboutUsUI());
                        },
                        child: Text(
                          'About us',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Pageants',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Contact us',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
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
      ),
    );
  }
}
