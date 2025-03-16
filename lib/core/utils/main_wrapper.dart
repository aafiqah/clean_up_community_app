import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constant/index.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int selectedIndex = 0;

  void goToBranch(int index) {
    setState(() {
      selectedIndex = index;
    });
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => goToBranch(0),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? CleanUpColor.buttonColor
                          : CleanUpColor.white,
                      border: Border.all(
                        strokeAlign: 0.5,
                        color: selectedIndex == 0
                            ? CleanUpColor.buttonColor
                            : CleanUpColor.greyMedium,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.home,
                      size: 28,
                      color: selectedIndex == 0
                          ? CleanUpColor.white
                          : CleanUpColor.buttonColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => goToBranch(1),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? CleanUpColor.buttonColor
                          : CleanUpColor.white,
                      border: Border.all(
                        strokeAlign: 0.5,
                        color: selectedIndex == 1
                            ? CleanUpColor.buttonColor
                            : CleanUpColor.greyMedium,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.my_location_rounded,
                      size: 28,
                      color: selectedIndex == 1
                          ? CleanUpColor.white
                          : CleanUpColor.buttonColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => goToBranch(2),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: selectedIndex == 2
                          ? CleanUpColor.buttonColor
                          : CleanUpColor.white,
                      border: Border.all(
                        strokeAlign: 0.5,
                        color: selectedIndex == 2
                            ? CleanUpColor.buttonColor
                            : CleanUpColor.greyMedium,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.message,
                      size: 28,
                      color: selectedIndex == 2
                          ? CleanUpColor.white
                          : CleanUpColor.buttonColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => goToBranch(3),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: selectedIndex == 3
                          ? CleanUpColor.buttonColor
                          : CleanUpColor.white,
                      border: Border.all(
                        strokeAlign: 0.5,
                        color: selectedIndex == 3
                            ? CleanUpColor.buttonColor
                            : CleanUpColor.greyMedium,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.bookmark_outline,
                      size: 28,
                      color: selectedIndex == 3
                          ? CleanUpColor.white
                          : CleanUpColor.buttonColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => goToBranch(4),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: selectedIndex == 4
                          ? CleanUpColor.buttonColor
                          : CleanUpColor.white,
                      border: Border.all(
                        strokeAlign: 0.5,
                        color: selectedIndex == 4
                            ? CleanUpColor.buttonColor
                            : CleanUpColor.greyMedium,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.menu,
                      size: 28,
                      color: selectedIndex == 4
                          ? CleanUpColor.white
                          : CleanUpColor.buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
