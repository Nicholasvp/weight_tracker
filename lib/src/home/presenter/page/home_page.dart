import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/presenter/page/home_wrapper.dart';
import 'package:weight_tracker/src/home/presenter/widgets/my_bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        centerTitle: true,
        leading: Image.asset(
          MyAssets.logo,
          width: 40,
          height: 40,
        ),
        title: Text(
          'Weitght Tracker',
          style: MyText.title.copyWith(color: Colors.white),
        ),
      ),
      body: Consumer<HomeController>(
        builder: (context, controller, _) {
          return const HomeWrapper();
        },
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
