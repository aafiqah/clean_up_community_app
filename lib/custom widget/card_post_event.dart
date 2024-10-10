import 'package:flutter/material.dart';

import '../constant/index.dart';

class CardPostEvent extends StatelessWidget {
  const CardPostEvent({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 4,
      color: CleanUpColor.white,
      child: Container(
        height: 300,
        width: size.width,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: size.width,
              decoration: const BoxDecoration(
                  // image: AssetImage(CleanUpImages.appBarBg)
                  ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kempen Membersihkan Pantai'),
                Spacer(),
                Text('Pantai'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
