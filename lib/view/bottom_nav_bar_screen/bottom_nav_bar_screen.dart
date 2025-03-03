import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/cart_screen/cart_screen.dart';
import 'package:flux_store/view/home_screen/home_screen.dart';
import 'package:flux_store/view/profile_screen/profile_screen.dart';
import 'package:flux_store/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;
  List<Widget> screenList = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 3)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Image.asset(ImageConstants.homeInactive),
                activeIcon: Image.asset(ImageConstants.homeActive),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Image.asset(ImageConstants.searchInactive),
                activeIcon: Image.asset(ImageConstants.searchActive),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Image.asset(ImageConstants.cartInactive),
                activeIcon: Image.asset(ImageConstants.cartActive),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Image.asset(ImageConstants.profileInactive),
                activeIcon: Image.asset(ImageConstants.profileActive),
              ),
            ],
          ),
        ),
      ),
      body: screenList[selectedIndex],
      extendBody: true,
    );
  }
}
