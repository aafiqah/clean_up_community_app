import 'package:clean_up_community_app/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../custom widget/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        stringTitle: 'CleanUp Community',
        titleColor: CleanUpColor.white,
        backgroundColor: CleanUpColor.primary,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: SizeSpacing().doubleSpacing10),
            child: InkWell(
              onTap: () {
                context.goNamed("/onBoarding_page");
              },
              child: Icon(
                Icons.exit_to_app,
                size: SizeSpacing().doubleSpacing30,
                color: CleanUpColor.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const Positioned(
            top: -200,
            right: -50,
            left: -50,
            bottom: 380,
            child: Image(
              image: AssetImage(CleanUpImages.appBarBg),
            ),
          ),
          CustomScrollView(
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
        ],
      ),
      floatingActionButton: Submitbutton(
        onTap: () {
          context.goNamed("/create_event_page");
        },
        buttonColor: CleanUpColor.primary,
        width: 75,
        height: 75,
        widget: const Icon(
          Icons.add,
          size: 30,
          color: CleanUpColor.white,
        ),
        buttonRadius: 20,
      ),
    );
  }
}
