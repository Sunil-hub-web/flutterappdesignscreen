import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/screens/product_screens.dart';
import 'package:flutterappdesignscreen/screens/products_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images = [
    "assets/images/Banner1.jpg",
    "assets/images/Banner2.jpg",
    "assets/images/Banner3.jpg",
  ];

  final List promotions = [
    "assets/images/Promtion1.jpg",
    "assets/images/Promotion2.jpg",
    "assets/images/Promtion1.jpg",
  ];

  int _currentIndex = 0;
  final CarouselController controller = CarouselController();

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            controller.jumpToPage(entry.key);
            setState(() {
              _currentIndex = entry.key;
            });
          },
          child: Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Color(0xFF146ABE)
                    : Colors.white),
          ),
        );
      }).toList(),
    );
  }

  List category = ["Cars", "House", "Electronics", "Jobs"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver To",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "New York USA",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/images/profile.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          left: 40,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                color: Colors.redAccent,
                                shape: BoxShape.circle),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search your food here...",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xFF146ABE),
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: images.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    final image = images[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: MediaQuery.of(context).size.height * 0.25,
                    initialPage: 0,
                    reverse: false,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 0, right: 0, bottom: 10, child: buildIndicator())
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF146ABE),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/${category[index]}.png",
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          category[index],
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductScreen()),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF146ABE),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ProductWidgets(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF146ABE),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: promotions.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      promotions[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "NewSest",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF146ABE),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ProductWidgets(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
