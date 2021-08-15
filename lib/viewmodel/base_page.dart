import 'package:day1/viewmodel/page_router.dart';
import 'package:day1/widget.dart/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BasePageViewModel>(
        builder: (viewModel) {
          return viewModel.page[viewModel.curruntPage];
        },
      ),
      bottomNavigationBar: GetFotter(),
    );
  }
}
