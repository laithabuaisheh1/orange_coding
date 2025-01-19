import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // part 1
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 300,
            //backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar Example',
                  style: TextStyle(color: Colors.blue)),
              background: Image.network(
                'https://unsplash.com/photos/a-dark-forest-with-a-house-in-the-distance-Y0P98SZepa8',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // part 2
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return ListTile(
                  title: Text('youtube video  $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
