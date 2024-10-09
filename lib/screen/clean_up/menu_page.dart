import 'package:clean_up_community_app/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../custom widget/index.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _searchController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarShared(
        stringTitle: 'Menu',
        titleColor: CleanUpColor.white,
        backgroundColor: CleanUpColor.primary,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
                top: 10,
              ),
              child: CustomSearchBar(
                hintText: 'Find your event',
                controller: _searchController,
                borderRadius: 20,
                fillColor: CleanUpColor.searchBarColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
