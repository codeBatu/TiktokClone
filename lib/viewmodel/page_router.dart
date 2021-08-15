import 'package:day1/models/menu_title.dart';
import 'package:day1/view/pages/direct_message_page.dart';
import 'package:day1/view/pages/discover_page.dart';
import 'package:day1/view/pages/home_page.dart';
import 'package:day1/view/pages/profile_page.dart';
import 'package:day1/view/pages/upload_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasePageViewModel extends GetxController {
  int curruntPage = 0;
  changepage(int index) {
    curruntPage = index;
    update();
  }

  List<Widget> page = [
    HomePage(),
    DiscoverPage(),
    UploadPage(),
    DMPage(),
    ProfilePage()
  ];
  List<MenuTitle> bottomItemList = [
    MenuTitle(menuTitle: "Home", Icons: Icons.home),
    MenuTitle(menuTitle: "Discover", Icons: Icons.search),
    MenuTitle(menuTitle: "", Icons: Icons.upload),
    MenuTitle(menuTitle: "Message", Icons: Icons.message),
    MenuTitle(menuTitle: "Profile", Icons: Icons.pages),
  ];
}
