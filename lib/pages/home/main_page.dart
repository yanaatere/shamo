import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/icon_cart.png', width: 60),
        backgroundColor: secondaryColor,
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_home.png', width: 21), label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_chat.png', width: 20), label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_favorite.png', width: 20),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_profile.png', width: 20),
                  label: '')
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text('Ini Main Page'),
      ),
    );
  }
}
