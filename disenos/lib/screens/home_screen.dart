import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavigation(),
        body: Stack(
          children: const [
            BackgGroundScreen(),
            _HomeBody(),
          ],
        ));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
