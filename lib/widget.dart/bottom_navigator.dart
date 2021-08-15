import 'package:day1/viewmodel/page_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetFotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: GetBuilder<BasePageViewModel>(
        builder: (viewModel) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.bottomItemList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  viewModel.changepage(index);
                },
                child: Container(
                  color: Colors.black,
                  width: (((MediaQuery.of(context).size.width * 1) / 5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        viewModel.bottomItemList[index].Icons,
                        color: Colors.white,
                      ),
                      Text(
                        viewModel.bottomItemList[index].menuTitle.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
