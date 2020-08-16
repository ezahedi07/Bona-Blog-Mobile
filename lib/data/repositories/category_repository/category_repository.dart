import 'package:bona_blog/features/article/data/model/article_model.dart';
import 'package:bona_blog/models/category_models/category_model.dart';
import 'package:bona_blog/shared/bloc/base_repository.dart';
import 'package:meta/meta.dart';
import 'package:bona_blog/services/remote_services/category_remote_services/category_remote_api_client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class CategoryRepository implements BonaBlogBaseRepository {
  final DataConnectionChecker connectionChecker;
  final CategoryApiClient categoryRemoteApiClient;
  final dynamic articleLocalApiClient;

  const CategoryRepository(
      {@required this.connectionChecker,
      @required this.categoryRemoteApiClient,
      this.articleLocalApiClient});

  Future<List<ArticleCategoryModel>> getAllCategories() async {
    if (await connectionChecker.hasConnection) {
      final categoryList = await categoryRemoteApiClient.getAllCategories();

      return categoryList;
    } else {
      throw Exception('No internet connection');
    }
  }

  Future<List<Article>> getCategoryArticles({int categoryId}) async {
    if (await connectionChecker.hasConnection) {
      final categoryArticleList = await categoryRemoteApiClient
          .getCategoryArticles(categoryId: categoryId);

      return categoryArticleList;
    } else {
      throw Exception('No internet connection');
    }
  }

  @override
  List<Object> get props =>
      [connectionChecker, categoryRemoteApiClient, articleLocalApiClient];

  @override
  bool get stringify => null;
}
