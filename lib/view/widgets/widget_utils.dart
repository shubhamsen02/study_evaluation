import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetUtils {
  static List<Widget> getTabs(List<String> tabTitles) {
    List<Widget> tabs = [];
    for (var element in tabTitles) {
      tabs.add(getTab(element));
    }
    return tabs;
  }

  static Widget getTab(String tabTitle) {
    return Tab(text: tabTitle);
  }

  static Widget getTabBar(TabController? tabController) {
    return TabBar(
      //unselectedLabelColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      indicatorColor: Color(0xFF009DDC),
      indicatorWeight: 2,
      indicator: BoxDecoration(
        color: Color(0xFF009DDC),
        borderRadius: BorderRadius.circular(30),
      ),
      controller: tabController,
      tabs: WidgetUtils.getTabs(["Login", "Registration"]),
    );
  }

  static Widget getLoginImageContainer(String imagePath,
      {double? width = 100, double? height = 100, double topMargin = 100}) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: topMargin),
      child: Center(
        child: getClipRectImage(imagePath, radius: 10.0),
      ),
    );
  }

  static Widget getClipRectImage(String imagePath,
      {radius, fitType = BoxFit.contain}) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          imagePath,
          fit: fitType,
        ));
  }

  static Widget getTabview(tabController, tabPages) {
    return TabBarView(controller: tabController, children: tabPages);
  }

  static Widget getExpanded(Widget child) {
    return Expanded(child: child);
  }
}
