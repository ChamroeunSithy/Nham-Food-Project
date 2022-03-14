import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/page/screen/cart_screen.dart';
import 'package:flutter_assignment_3/page/screen/home_screen.dart';
import 'package:flutter_assignment_3/page/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screenlist = [];

  @override
  void initState() {
    super.initState();
    _screenlist.add(const HomeScreen());
    _screenlist.add(const CartScreen());
    _screenlist.add(const ProfileScreen());
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        children: _screenlist,
      ),
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildBottom => BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(_currentIndex,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_rounded,
              size: 28.0,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 28.0,
            ),
            label: "Profile",
          ),
        ],
      );
}
