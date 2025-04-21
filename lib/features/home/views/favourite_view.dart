import 'package:aromaqueen/core/components/aroma_card.dart';
import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: PaddingWrapper(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) {
              return AromaCard(
                title: 'Favorite recipes',
                content: 'To Your Favorites',
                hasStar: false,
              );
            }),
          ),
        ),
      ),
    );
  }
}
