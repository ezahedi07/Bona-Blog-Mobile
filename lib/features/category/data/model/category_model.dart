class ArticleCategory {
  final String categoryId;
  final String name;
  final String imageURL;
  final String dateCreatedOn;
  final String dateUpdatedOn;
  final String timeCreatedOn;
  final String timeUpdatedOn;

  ArticleCategory(
      {this.categoryId,
      this.name,
      this.imageURL,
      this.dateCreatedOn,
      this.dateUpdatedOn,
      this.timeCreatedOn,
      this.timeUpdatedOn})
      : assert(name != null),
        assert(imageURL != null);
  // assert(dateCreatedOn != null),
  // assert(dateUpdatedOn != null),
  // assert(timeCreatedOn != null),
  // assert(timeUpdatedOn != null);

  @override
  String toString() => "$name";

  static List<ArticleCategory> getAllCategories() => [
        ArticleCategory(
          name: "Sports",
          imageURL: "assets/images/SPORTS.jpg",
        ),
        ArticleCategory(
          name: "Art",
          imageURL: "assets/images/art.jpg",
        ),
        ArticleCategory(
          name: "Politics",
          imageURL: "assets/images/politics.jpg",
        ),
        ArticleCategory(
          name: "Entertainment",
          imageURL: "assets/images/Entertainment.jpg",
        ),
        ArticleCategory(
          name: "Programming",
          imageURL: "assets/images/programming.jpg",
        ),
        ArticleCategory(
          name: "Food",
          imageURL: "assets/images/food.jpg",
        ),
        ArticleCategory(
          name: "Software Engineering ",
          imageURL: "assets/images/se.jpg",
        ),
        ArticleCategory(
          name: "Design",
          imageURL: "assets/images/design.jpg",
        ),
        ArticleCategory(
          name: "Sports",
          imageURL: "assets/images/SPORTS.jpg",
        ),
        ArticleCategory(
          name: "Art",
          imageURL: "assets/images/art.jpg",
        ),
        ArticleCategory(
          name: "Politics",
          imageURL: "assets/images/politics.jpg",
        ),
        ArticleCategory(
          name: "Entertainment",
          imageURL: "assets/images/Entertainment.jpg",
        ),
        ArticleCategory(
          name: "Programming",
          imageURL: "assets/images/programming.jpg",
        ),
        ArticleCategory(
          name: "Food",
          imageURL: "assets/images/food.jpg",
        ),
        ArticleCategory(
          name: "Software Engineering",
          imageURL: "assets/images/se.jpg",
        ),
        ArticleCategory(
          name: "Design",
          imageURL: "assets/images/design.jpg",
        ),
      ];
}
