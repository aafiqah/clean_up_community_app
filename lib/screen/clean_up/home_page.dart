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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      appBar: AppBarShared(
        stringTitle: 'Home',
        titleColor: CleanUpColor.white,
        backgroundColor: CleanUpColor.primary,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: SizeSpacing().doubleSpacing10),
            child: InkWell(
              onTap: () {
                context.goNamed("/login_page");
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
      body: const SizedBox.expand(),
    );
  }
}
