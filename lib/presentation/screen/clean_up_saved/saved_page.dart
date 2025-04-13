import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';

import '../../global_widgets/index.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
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
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      appBar: AppBarShared(
        stringTitle: 'Saved',
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
                hintText: 'Search Event',
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
