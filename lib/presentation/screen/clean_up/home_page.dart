import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, homePageState) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: CleanUpColor.primary,
          appBar: AppBarShared(
            stringTitle: 'CleanUp Community',
            titleColor: CleanUpColor.white,
            backgroundColor: CleanUpColor.primary,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                    onPressed: () {
                      context.read<HomePageCubit>().onTapSeacrh(true);
                    },
                    icon: const Icon(
                      Icons.search_rounded,
                      color: CleanUpColor.white,
                    )),
              )
            ],
          ),
          body: Column(
            children: [
              !homePageState.ontapSearch
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 30),
                                  child: CardPostEvent(
                                    eventName: 'Kempen Membersihkan Pantai',
                                    spotsLeft: 3,
                                    participantsCount: 15,
                                    imagePath: 'assets/images/logoCleanUp.png',
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
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        spacing: 5,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<HomePageCubit>().onTapSeacrh(false);
                              _searchController.clear();
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CleanUpColor.searchBarColor,
                                border: Border.all(
                                  color: CleanUpColor.greyLight,
                                  width: 1.5,
                                ),
                              ),
                              child: const Icon(
                                Icons.close_rounded,
                                size: 30,
                                color: CleanUpColor.greyMedium,
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomSearchBar(
                              onTap: () {
                                context.read<HomePageCubit>().onTapSeacrh(true);
                              },
                              iconOnTap: () {
                                context
                                    .read<HomePageCubit>()
                                    .onTapSeacrh(false);
                                _searchController.clear();
                              },
                              hintText: 'Find your event',
                              controller: _searchController,
                              borderRadius: 10,
                              fillColor: CleanUpColor.searchBarColor,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
          // floatingActionButton: !homePageState.ontapSearch
          //     ? Container(
          //         decoration: BoxDecoration(
          //           color: CleanUpColor.white,
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.all(3),
          //           child: Submitbutton(
          //             onPressed: () {
          //               context.goNamed("/create_event_page");
          //             },
          //             buttonColor: CleanUpColor.primary,
          //             width: 75,
          //             height: 75,
          //             widget: const Icon(
          //               Icons.add,
          //               size: 30,
          //               color: CleanUpColor.white,
          //             ),
          //             borderRadius: 20,
          //           ),
          //         ),
          //       )
          //     : const SizedBox.shrink(),
        );
      },
    );
  }
}
