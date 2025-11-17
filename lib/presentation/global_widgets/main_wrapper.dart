import 'dart:ui';
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
      extendBody: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),

      // ------------------------------
      // FLOATING GLASS NAVIGATION BAR
      // ------------------------------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.3),
                ),
              ),
              child: BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _navItem(
                        index: 0,
                        icon: Icons.home,
                        isSelected: state.selectedIndex == 0,
                      ),
                      _navItem(
                        index: 1,
                        icon: Icons.my_location_rounded,
                        isSelected: state.selectedIndex == 1,
                      ),
                      _navItem(
                        index: 2,
                        icon: Icons.message,
                        isSelected: state.selectedIndex == 2,
                      ),
                      _navItem(
                        index: 3,
                        icon: Icons.bookmark,
                        isSelected: state.selectedIndex == 3,
                      ),
                      _navItem(
                        index: 4,
                        icon: Icons.menu,
                        isSelected: state.selectedIndex == 4,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  // -----------------------------------------
  // CUSTOM NAV ITEM (animated highlight)
  // -----------------------------------------
  Widget _navItem({
    required int index,
    required IconData icon,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => goToBranch(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? CleanUpColor.primary.withValues(alpha: 0.25) : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          icon,
          size: isSelected ? 30 : 26,
          color: CleanUpColor.primary,
        ),
      ),
    );
  }
}
