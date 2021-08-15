import 'package:day1/viewmodel/base_page.dart';
import 'package:day1/viewmodel/page_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(TiktokClone());
}

class TiktokClone extends StatelessWidget {
  const TiktokClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BasePageViewModel bpvm = Get.put(BasePageViewModel());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasePage(),
    );
  }
}
