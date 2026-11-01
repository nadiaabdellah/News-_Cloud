

class CategoryModel {
  final String image;
  final String name;   // الاسم المعروض
  final String value;  // القيمة اللي بتروح للـ API

  const CategoryModel({
    required this.image,
    required this.name,
    required this.value,
  });
}