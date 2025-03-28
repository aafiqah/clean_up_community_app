import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../cubits/index.dart';
import '../../widgets/index.dart';

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
      resizeToAvoidBottomInset: false,
      appBar: AppBarShared(
        stringTitle: 'CleanUp Community',
        titleColor: CleanUpColor.white,
        backgroundColor: CleanUpColor.primary,
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.only(right: SizeSpacing().doubleSpacing10),
        //     child: InkWell(
        //       onTap: () {
        //         context.goNamed("/onBoarding_page");
        //       },
        //       child: Icon(
        //         Icons.exit_to_app,
        //         size: SizeSpacing().doubleSpacing30,
        //         color: CleanUpColor.white,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, homePageState) {
          return Stack(
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 10,
                      bottom: 10,
                    ),
                    child: CustomSearchBar(
                      onTap: () {
                        context.read<HomePageCubit>().onTapSeacrh(true);
                      },
                      iconOnTap: () {
                        context.read<HomePageCubit>().onTapSeacrh(false);
                        _searchController.clear();
                      },
                      hintText: 'Find your event',
                      controller: _searchController,
                      borderRadius: 20,
                      fillColor: CleanUpColor.searchBarColor,
                    ),
                  ),
                  !homePageState.ontapSearch
                      ? Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics:
                                      const NeverScrollableScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 30),
                                      child: CardPostEvent(
                                        eventName:
                                            'Kempen Membersihkan Pantai',
                                        spotsLeft: 3,
                                        participantsCount: 15,
                                        imagePath:
                                            'assets/images/logoCleanUp.png',
                                        eventDateTime:
                                            '30th December 2022, 8.30am - 1.00pm',
                                        eventAddress:
                                            'Pantai Muara | Muara, Serasa, Brunei-Muara',
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              )
            ],
          );
        },
      ),
      floatingActionButton: Submitbutton(
        onPressed: () {
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
        borderRadius: 20,
      ),
    );
  }
}
