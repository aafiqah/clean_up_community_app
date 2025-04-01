import 'package:flutter/material.dart';

import '../../../../core/index.dart';
import '../../../widgets/index.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({
    super.key,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
    this.imagePath,
  });

  final String eventName;
  final String eventDate;
  final String eventLocation;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: CleanUpColor.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: CleanUpColor.greyMedium,
            offset: Offset(0.5, 0.5),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).height / 9,
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
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleShared.textStyle.subtitle,
                ),
                Text(
                  '- $eventDate -',
                  style: TextStyleShared.textStyle.bodySmall,
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        eventLocation,
                        style: TextStyleShared.textStyle.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Submitbutton(
                      onPressed: () {},
                      text: 'Join',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
