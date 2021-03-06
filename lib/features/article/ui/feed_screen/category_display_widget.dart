import 'package:bona_blog/features/article/ui/feed_screen/feed_category_card_widget.dart';
import 'package:bona_blog/features/category/data/model/category_model.dart';
import 'package:bona_blog/shared/utils/routes/route_constants_utils.dart';
import 'package:flutter/material.dart';

class DisplayCategoriesWidget extends StatelessWidget {
  final List<ArticleCategory> categories;

  const DisplayCategoriesWidget({
    Key key,
    @required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemCount: categories.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int categoryIndex) {
          return GestureDetector(
              onTap: () {
                Map<String, dynamic> data = {
                  "categoryId": categoryIndex,
                  "categoryName": categories[categoryIndex].name,
                  "categoryImageURL": categories[categoryIndex].imageURL,
                };
                Navigator.pushNamed(context, CategoryArticlesListRoute,
                    arguments: data);
              },
              child: FeedCategoryCard(
                  categories: categories, categoryIndex: categoryIndex));
        });
  }
}
