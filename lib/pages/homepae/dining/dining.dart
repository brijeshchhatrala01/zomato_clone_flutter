import 'package:flutter/material.dart';

import '../../../appbar/profile_appbar.dart';
import '../../../appbar/search_appbar.dart';


class DiningPage extends StatefulWidget {
  const DiningPage({super.key});

  @override
  State<DiningPage> createState() => _DiningPageState();
}

class _DiningPageState extends State<DiningPage> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const ProfileAppBar(),
          SearchAppBar(
            searchFood: _searchController,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
