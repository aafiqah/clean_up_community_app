import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../index.dart';

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
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, homePageState) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: CleanUpColor.primary.withValues(alpha: 0.2),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: !homePageState.ontapSearch
                  ? ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: CleanUpColor.primary.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: CleanUpColor.primary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(Icons.person,
                                    color: CleanUpColor.white),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Added spacing instead of `spacing`
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning, Lez',
                                    style: TextStyleShared.textStyle.bodyMedium,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: CleanUpColor.primary,
                                      ),
                                      Text('Johor, JB',
                                          style: TextStyleShared
                                              .textStyle.bodyMedium),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<HomePageCubit>()
                                      .onTapSeacrh(true);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    color: CleanUpColor.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(Icons.search,
                                      color: CleanUpColor.white),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: CleanUpColor.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(Icons.notifications_rounded,
                                      color: CleanUpColor.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 35,
                          child: ListView.builder(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: CleanUpColor.primary
                                      .withValues(alpha: 0.2),
                                ),
                                child: Row(
                                  children: [
                                    Text('${index + 1}'),
                                    const Text('🏖 Beach Cleanup'),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Upcoming Events',
                              style: TextStyleShared.textStyle.title,
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'See All',
                                style: TextStyleShared.textStyle.title.copyWith(
                                  color: CleanUpColor.primary,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 250,
                          margin: const EdgeInsets.only(top: 10),
                          child: GridView.builder(
                            padding: const EdgeInsets.all(5),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15, // Space between columns
                              mainAxisSpacing: 15, // Space between rows
                              childAspectRatio: .4, // Adjust width-height ratio
                            ),
                            itemBuilder: (context, index) {
                              return const UpcomingEventWidget(
                                eventName: 'Kempen Membersihkan Pantai',
                                eventDate: 'May, 2025',
                                eventLocation: 'JB, Johor',
                                imagePath: 'assets/images/logoCleanUp.png',
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Nearby Events',
                              style: TextStyleShared.textStyle.title,
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'See All',
                                style: TextStyleShared.textStyle.title.copyWith(
                                  color: CleanUpColor.primary,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const CardPostEvent(
                              eventName: 'Kempen Membersihkan Pantai',
                              spotsLeft: 3,
                              participantsCount: 15,
                              imagePath: 'assets/images/logoCleanUp.png',
                              eventDateTime:
                                  '30th December 2022, 8.30am - 1.00pm',
                              eventAddress:
                                  'Pantai Muara | Muara, Serasa, Brunei-Muara',
                            );
                          },
                        ),
                      ],
                    )
                  : ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: CleanUpColor.primary.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<HomePageCubit>()
                                      .onTapSeacrh(false);
                                  _searchController.clear();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: CleanUpColor.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(Icons.close_rounded,
                                      color: CleanUpColor.white),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: CustomSearchBar(
                                  hintText: 'Find your event',
                                  controller: _searchController,
                                  borderRadius: 10,
                                  boxHeight: 45,
                                  fillColor: CleanUpColor.white,
                                  prefixIcon: const Icon(
                                    Icons.search_rounded,
                                    color: CleanUpColor.greyMedium,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                    color: CleanUpColor.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(Icons.filter_list_rounded,
                                      color: CleanUpColor.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
