import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:splash_login/models/post_model.dart';
import 'package:splash_login/repositories/home_repository.dart';

class HomeRepositoryMock extends Homerepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
