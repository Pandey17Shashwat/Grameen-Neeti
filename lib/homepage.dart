import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:grameen_neeti/chatbotmain.dart';
// import 'package:grameen_neeti/extras.dart';
// import 'package:grameen_neeti/main.dart';
// import 'package:grameen_neeti/profiledetails.dart';
// import 'package:grameen_neeti/schmeshome.dart';
// import 'package:grameen_neeti/tracker.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyAppState();
}

class _MyAppState extends State<Homepage> {
  int activeIndex = 0;
  final urlImages = ['assets/img1.jpg', 'assets/img2.jpg', 'assets/img3.jpg'];

  String accountName = 'No User';
  String accountEmail = 'no@example.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  accountName,
                  style: const TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  accountEmail,
                  style: const TextStyle(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    accountName[0],
                    style: const TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => const Profiledetail()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Schemes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => SchemesHome()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Track Your Application",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => tracker()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => Menu()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => Menu()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "Complain",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => Menu()));
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: const Text(
                  "logout",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => const HomeScreen()));
                },
              ),
            ],
          ),
        ),

        // appbar
        appBar: AppBar(
          //set your height
          flexibleSpace: SafeArea(
            maintainBottomViewPadding: true,
            child: Container(
              margin: const EdgeInsets.fromLTRB(60, 3, 0, 0),
              // set your color
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Grameen Neeti",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                      IconButton(
                        icon: const Icon(Icons.mic),
                        iconSize: 25,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 1.0),
                      IconButton(
                        icon: const Icon(Icons.notifications_active_outlined),
                        iconSize: 25,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        iconSize: 25,
                        onPressed: () {},
                      )
                    ],
                  ), // set your search bar setting
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: const Color.fromRGBO(199, 228, 238, 500),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  Center(
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        reverse: true,
                      ),
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        return buildImage(urlImage, index);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    //elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 50,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Center(
                              child: Text(
                                'All Schemes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.arrow_drop_down_circle),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => SchemesHome()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    //elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 50,
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'UPCOMING EVENTS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'PM Adarsh Gram Yojna',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pradhan Mantri Ujjwala Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pradhan Mantri Jan Dhan Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      height: 70,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'PM Suraksha Bima Yojana',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'PM Vaya Vandana Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 50),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon:
                                      const Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                      height: 70,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'PM Suraksha Bima Yojana',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const Chatbotmain()));
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.mark_unread_chat_alt),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        color: Colors.white,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: const JumpingDotEffect(
        dotWidth: 3,
        dotHeight: 3,
      ));
}
