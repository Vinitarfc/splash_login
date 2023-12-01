import 'package:dio/dio.dart';
import 'package:splash_login/models/post_model.dart';
import 'package:splash_login/repositories/home_repository.dart';

class HomeRepositoryImp extends Homerepository {
  @override
  Future<List<PostModel>> getList() async {
    final dio = Dio();

    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }
}
