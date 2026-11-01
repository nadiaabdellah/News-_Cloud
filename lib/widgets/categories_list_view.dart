

import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeyRZi2SbLmqd1eEf_tyN4ullPMw_ADh6-jlgmVs2-fA&s=10',
      name: 'Business',
      value: 'business',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQknldnjti7C56n6c9DPun_hoBIjNL0RvGsDAh6Mpt9JA&s=10',
      name: 'Sciences',
      value: 'science',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlB2qzNcFYfJFa23CdVSL2OLnMaoXcio6c4s3MFN3bA&s=10',
      name: 'Sport',
      value: 'sports',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTskjKlUw0aT_tW6KBLVfkDBFzSlJdFLHFrSKXyUQXxTw&s=10',
      name: 'Policy',
      value: 'general',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPrEo1x2-LmhkAXlLll_u7emUwkUvqewxRF2SyuoSjfw&s=10',
      name: 'Health',
      value: 'health',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT48eLt22kxCz3AHlx7QssjGSHM37KmCLME3ysBIU_0Pg&s=10',
      name: 'Technology',
      value: 'technology',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToEkeKq9CyNNA3fISZYQI8F3NLjmr2KQIW2bJJ5n23Ww&s=10',
      name: 'Travel',
      value: 'general',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrYwxggEoaZU_w0zBDSCTWk9XoTuu6Yef-KON2PQ8XrQ&s=10',
      name: 'Fashion',
      value: 'general',
    ),
    CategoryModel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNXjDwYodkxtSwhym_Du_8g8x07hamzaAB1XQOpWPK5g&s=10',
      name: 'Beauty',
      value: 'general',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}