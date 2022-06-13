import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/icon_cart.png', width: 60),
        backgroundColor: secondaryColor,
      );
    }

    Widget body() {
      print('Index Ke ' + currentIndex.toString());
      switch (currentIndex) {
        case 0:
          return const Homepage();
          break;
        case 1:
          return Chatpage();
          break;
        case 2:
          return Whistlistpage();
          break;
        case 3:
          return Profilepage();
          break;
        default:
          return Homepage();
      }
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_home.png',
                        width: 21,
                        color: currentIndex == 0
                            ? primaryColor
                            : btnNotClickedColor),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_chat.png',
                        width: 20,
                        color: currentIndex == 1
                            ? primaryColor
                            : btnNotClickedColor),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_favorite.png',
                        width: 20,
                        color: currentIndex == 2
                            ? primaryColor
                            : btnNotClickedColor),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_profile.png',
                        width: 20,
                        color: currentIndex == 3
                            ? primaryColor
                            : btnNotClickedColor),
                  ),
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
        bottomNavigationBar: customButtonNav(),
        body: body());
  }
}
