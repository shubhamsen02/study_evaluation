import 'package:flutter/material.dart';
import 'package:study_evaluation/utils/app_constants.dart';
import 'package:study_evaluation/view/screens/login_screen.dart';
import 'package:study_evaluation/view/screens/registration_screen.dart';
import 'package:study_evaluation/view/widgets/widget_utils.dart';
// import 'package:quality_education/view/screens/login_screen.dart';
// import 'package:quality_education/view/screens/registration_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: Color(AppConstants.primaryColorApp),
      child: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xFF009DDC),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WidgetUtils.getLoginImageContainer("assets/images/logo.png"),
                  const SizedBox(
                    height: 5,
                  ),
                  _getTabContainer(context),
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }

  Container _getTabContainer(BuildContext context) {
    return Container(
      // height: 440,
      child: Padding(
        padding: EdgeInsets.all(1),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                // height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFFfef5e6),
                    borderRadius: BorderRadius.circular(30)),
                child: _getTabBarColumns(),
              ),

              WidgetUtils.getExpanded(WidgetUtils.getTabview(tabController, [
                const LoginScreen(),
                const RegistrationScreen()
              ])) //Adding Tabs
            ],
          ),
        ),
      ),
    );
  }

  Column _getTabBarColumns() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(0),
          child: WidgetUtils.getTabBar(tabController),
        ),
      ],
    );
  }
}
