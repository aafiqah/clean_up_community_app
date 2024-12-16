import 'package:flutter/material.dart';

import '../../core/constant/index.dart';

final List<Color> colors = [
  CleanUpColor.redMedium,
  CleanUpColor.blueMedium,
  CleanUpColor.greenMedium,
  CleanUpColor.orangeMedium,
  CleanUpColor.purpleMedium,
];

class CardPostEvent extends StatelessWidget {
  const CardPostEvent({
    super.key,
    required this.eventName,
    required this.eventDateTime,
    required this.eventAddress,
    required this.spotsLeft,
    required this.participantsCount,
    this.imagePath,
  });

  final String eventName;
  final String eventDateTime;
  final String eventAddress;
  final int spotsLeft;
  final int participantsCount;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: CleanUpColor.white,
      child: Container(
        height: 300,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                image: imagePath != null
                    ? DecorationImage(
                        image: AssetImage(imagePath!),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: CleanUpColor.greyLight,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  eventName,
                  style: TextStyleShared.textStyle.bodyMedium,
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 20,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount:
                            participantsCount > 5 ? 6 : participantsCount,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 5) {
                            return Transform.translate(
                              offset: Offset(index * 8, 0),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CleanUpColor.greyLight,
                                  border: Border.all(
                                      color: CleanUpColor.transparent),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '+${participantsCount - 5}',
                                  style: const TextStyle(
                                    color: CleanUpColor.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          }
                          return Transform.translate(
                            offset: Offset(index * 8, 0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: CleanUpColor.transparent,
                                ),
                                color: colors[index % colors.length],
                              ),
                              child: const Icon(
                                Icons.people_rounded,
                                color: CleanUpColor.white,
                                size: 10,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '$spotsLeft spots left',
                      style: TextStyleShared.textStyle.bodyMedium.copyWith(
                        color: CleanUpColor.redMedium,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Image(
                  image: AssetImage(CleanUpImages.calendar),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      eventDateTime,
                      style: TextStyleShared.textStyle.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Image(
                  image: AssetImage(CleanUpImages.map),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      eventAddress,
                      style: TextStyleShared.textStyle.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: CleanUpColor.buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('More Details'),
            )
          ],
        ),
      ),
    );
  }
}
