import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoes Store',
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 14),
                  ),
                  Text(
                    'Online',
                    style: primaryTextStyle.copyWith(
                        fontWeight: light, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(60),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
    );
  }
}