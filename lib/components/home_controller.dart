import 'package:flutter/material.dart';
import 'package:splash_login/models/post_model.dart';
import 'package:splash_login/repositories/home_repository.dart';

class HomeController {
  final Homerepository _homerepository;
  HomeController(this._homerepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);
  fecth() async {
    posts.value = await _homerepository.getList();
  }
}
