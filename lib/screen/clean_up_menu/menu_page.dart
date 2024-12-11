import 'package:clean_up_community_app/constant/index.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: CleanUpColor.primary,
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
                hintText: 'Search',
                controller: _searchController,
                borderRadius: 20,
                fillColor: CleanUpColor.searchBarColor,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: SizeSpacing().doubleSpacing30,
                      bottom: SizeSpacing().doubleSpacing5,
                    ),
                    width: 180,
                    height: 180,
                    padding: EdgeInsets.all(SizeSpacing().doubleSpacing10),
                    decoration: BoxDecoration(
                      color: CleanUpColor.icognitoBg,
                      borderRadius: BorderRadius.circular(
                        SizeSpacing().doubleSpacing15,
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 160,
                      padding: EdgeInsets.all(SizeSpacing().doubleSpacing15),
                      decoration: BoxDecoration(
                        color: CleanUpColor.white,
                        borderRadius: BorderRadius.circular(
                          SizeSpacing().doubleSpacing15,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            CleanUpImages.logoCleanUp,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
