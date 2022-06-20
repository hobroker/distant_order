import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            title: const Text('Connections'),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
          const SliverToBoxAdapter(
            child: Card(
              child: Text('Connections'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add connection',
        child: const Icon(Icons.add),
      ),
    );
  }
}
