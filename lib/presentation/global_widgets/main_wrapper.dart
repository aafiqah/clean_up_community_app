import 'package:clean_up_community_app/application/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/index.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  void goToBranch(int index) {
    context.read<NavigationMenuCubit>().selectIndex(index);
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),
      bottomNavigationBar: SafeArea(
        child: Material(
          child: Container(
            color: CleanUpColor.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
              builder: (context, navigationMenuState) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      key: const ValueKey('branch_Home'),
                      onTap: () => goToBranch(0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: navigationMenuState.selectedIndex == 0
                              ? CleanUpColor.buttonColor
                              : CleanUpColor.white,
                          border: Border.all(
                            strokeAlign: 0.5,
                            color: navigationMenuState.selectedIndex == 0
                                ? CleanUpColor.buttonColor
                                : CleanUpColor.greyMedium,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.home,
                          size: 28,
                          color: navigationMenuState.selectedIndex == 0
                              ? CleanUpColor.white
                              : CleanUpColor.buttonColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      key: const ValueKey('branch_Map'),
                      onTap: () => goToBranch(1),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: navigationMenuState.selectedIndex == 1
                              ? CleanUpColor.buttonColor
                              : CleanUpColor.white,
                          border: Border.all(
                            strokeAlign: 0.5,
                            color: navigationMenuState.selectedIndex == 1
                                ? CleanUpColor.buttonColor
                                : CleanUpColor.greyMedium,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.my_location_rounded,
                          size: 28,
                          color: navigationMenuState.selectedIndex == 1
                              ? CleanUpColor.white
                              : CleanUpColor.buttonColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      key: const ValueKey('branch_Message'),
                      onTap: () => goToBranch(2),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: navigationMenuState.selectedIndex == 2
                              ? CleanUpColor.buttonColor
                              : CleanUpColor.white,
                          border: Border.all(
                            strokeAlign: 0.5,
                            color: navigationMenuState.selectedIndex == 2
                                ? CleanUpColor.buttonColor
                                : CleanUpColor.greyMedium,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.message,
                          size: 28,
                          color: navigationMenuState.selectedIndex == 2
                              ? CleanUpColor.white
                              : CleanUpColor.buttonColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      key: const ValueKey('branch_Menu'),
                      onTap: () => goToBranch(4),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: navigationMenuState.selectedIndex == 4
                              ? CleanUpColor.buttonColor
                              : CleanUpColor.white,
                          border: Border.all(
                            strokeAlign: 0.5,
                            color: navigationMenuState.selectedIndex == 4
                                ? CleanUpColor.buttonColor
                                : CleanUpColor.greyMedium,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.menu,
                          size: 28,
                          color: navigationMenuState.selectedIndex == 4
                              ? CleanUpColor.white
                              : CleanUpColor.buttonColor,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
