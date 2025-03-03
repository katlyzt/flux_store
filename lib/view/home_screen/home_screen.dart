import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/model/home_screen_models/category_model.dart';
import 'package:flux_store/utils/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Padding(
          padding: const EdgeInsets.only(
            left: 34,
            right: 34,
            top: 36,
            bottom: 10,
          ),
          child: Column(
            children: [
              //categories
              _categorySection(),
            ],
          ),
        ),
      ),
    );
  }

  Row _categorySection() {
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
    return Row(
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
    );
  }
}
