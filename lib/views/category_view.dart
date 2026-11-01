

import 'package:flutter/material.dart';
import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}