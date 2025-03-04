import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/model/home_screen_models/category_model.dart';
import 'package:flux_store/utils/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> carousalImages = [
    "assets/images/vw1.jpeg",
    "assets/images/vw2.jpeg",
    "assets/images/vw3.jpeg",
    "assets/images/vw4.jpeg",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.sort, size: 18),
          title: Text(
            "GemStore",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [Icon(Icons.notifications_none_outlined)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //categories
              _categorySection(),
              carousalBuilder(),
              featureProduct(), SizedBox(height: 19),
              newCollection(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    carousalImages.length,
                    (index) => Container(
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(carousalImages[index]),
                          Column(
                            children: [
                              Text(
                                "White fashion hoodie",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container newCollection() {
    return Container(
      width: double.infinity,
      height: 171,
      decoration: BoxDecoration(
        color: Color(0xffF8F8FA),
        // image: DecorationImage(
        //   image: AssetImage("assets/images/vw1.jpeg"),
        // ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NEW COLLECTION",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Text("HANG OUT \n & PARTY"),
            ],
          ),
          Image.asset("assets/images/vw1.jpeg"),
        ],
      ),
    );
  }

  Widget featureProduct() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 35,
            bottom: 19,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Feature Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Show all",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xff9B9B9B),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 35, right: 34),
            child: Row(
              spacing: 20,
              children: List.generate(
                4,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 126,
                      height: 172,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(carousalImages[index]),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Turtleneck Sweater ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "\$ 39.99",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget carousalBuilder() {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,

          scrollDirection: Axis.horizontal,
        ),
        itemCount: carousalImages.length,
        itemBuilder:
            (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(carousalImages[itemIndex]),
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _categorySection() {
    List<CategoryModel> categories = [
      CategoryModel(name: "Women", icon: Icons.female),
      CategoryModel(name: "Men", icon: Icons.male),
      CategoryModel(name: "Accessories", icon: Icons.access_alarm),
      CategoryModel(name: "Beauty", icon: Icons.health_and_safety),
      // {"icon": Icons.female, "category": "Women"},
      // {"icon": Icons.male, "category": "Men"},
      // {"icon": Icons.access_alarm, "category": "Accessories"},
      // {"icon": Icons.health_and_safety, "category": "Beauty"},
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, top: 36, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          4,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              spacing: 6,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: selectedIndex == index ? Border.all() : null,
                  ),
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == index ? AppColors.walnut : Colors.grey,
                    radius: 18,
                    child: Icon(categories[index].icon, color: Colors.white),
                  ),
                ),
                Text(
                  categories[index].name,
                  style: TextStyle(
                    color:
                        selectedIndex == index ? AppColors.walnut : Colors.grey,
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
