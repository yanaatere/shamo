import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/wishlist_card.dart';
import 'package:shamo/theme.dart';

class Whistlistpage extends StatelessWidget {
  const Whistlistpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishList() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_whislist.png',
                width: 74,
              ),
              SizedBox(
                height: 23,
              ),
              Column(
                children: [
                  Text(
                    'You don\'t have dream shoes?',
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Let\'s find your favorite shoes',
                    style: secondaryTextStyle.copyWith(
                        fontWeight: reguler, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 44,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Explore Store',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              WishListCard(),
              WishListCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishList(),
        content()
      ],
    );
  }
}
