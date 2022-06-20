import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../util/router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.go(Routes.home.value);
              },
            ),
            title: const Text('Settings'),
          ),
          const SliverToBoxAdapter(
            child: Card(
              child: Text('Settings'),
            ),
          ),
        ],
      ),
    );
  }
}
