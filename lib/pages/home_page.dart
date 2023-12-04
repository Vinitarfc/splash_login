import 'package:flutter/material.dart';
import 'package:splash_login/components/home_controller.dart';
import 'package:splash_login/models/post_model.dart';
import 'package:splash_login/repositories/home_repository_imp.dart';
import 'package:splash_login/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fecth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Lista de titulos'),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => true);
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            separatorBuilder: (_, __) => Divider(),
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              leading: Text(list[idx].id.toString()),
              trailing: Icon(Icons.arrow_forward),
              title: Text(list[idx].title),
              onTap: () => Navigator.of(context).pushNamed(
                '/datails',
                arguments: list[idx],
              ),
            ),
          );
        },
      ),
    );
  }
}
