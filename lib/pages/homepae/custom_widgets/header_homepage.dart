import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_widgets.dart';

//homepage header with particular food dish
class HeaderHomepage extends StatelessWidget {
  const HeaderHomepage({
    super.key,
    required this.displayWidth,
    required this.onPressedRecommanded,
    required this.onPressedFavorit,
  });

  final double displayWidth;
  final void Function()? onPressedRecommanded;
  final void Function()? onPressedFavorit;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        smallSizedBox,
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'Assets/image1.avif',
            width: displayWidth,
          ),
        ),
        smallSizedBox,
        Column(
          children: [
            const Center(
              child: Text('FOR YOU'),
            ),
            smallSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: const Text('Recommended'),
                ),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  label: const Text('Favourites'),
                ),
              ],
            ),
            smallSizedBox,
          ],
        )
      ]),
    );
  }
}
