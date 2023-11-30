import 'package:splash_login/models/post_model.dart';

abstract class Homerepository {
  Future<List<PostModel>> getList();
}
