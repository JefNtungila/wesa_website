import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'service.dart';
import 'welcome.dart';
import 'contact.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final List<String> imgList = [
      'assets/kitchen_3.jpg',
      'assets/toilette.jpg',
      'assets/sdb.jpg',
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          // Adjusted height to accommodate both carousel and tabs
          preferredSize: const Size.fromHeight(280),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            // flexibleSpace holds the carousel
            flexibleSpace: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: double.infinity,
                        autoPlay: true,
                        // This is crucial: 1.0 makes the item take 100% of the screen width
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                      ),
                      items: imgList.map((imagePath) {
                        return Container(
                          // This forces the container to the screen width
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              // FIX: Change this from .contain to .fitWidth or .cover
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                Align(
                  alignment: Alignment.topLeft,
                  child:Padding(
                    padding: const EdgeInsets.all(20.0), // Adjust distance from edges
                    child: Image.asset(
                      'assets/wesa_logo.png',
                      height: 100, // Set the size of your logo
                      width: 100,
                      color: Colors.blueGrey,
                    ),
                  ) ,
                )],
              ),
            ),
            // bottom holds the TabBar
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xFFF5F7F8),
              indicatorColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Acceuil',
                ),
                Tab(
                  icon: Icon(Icons.build),
                  text: 'Service',
                ),
                Tab(
                  icon: Icon(Icons.email),
                  text: 'Contact',
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Welcome(),
            Service(),
            Contact()
          ],
        ),
      ),
    );
  }
}