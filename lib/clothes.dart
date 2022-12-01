import 'package:flutter/foundation.dart';

enum Complexity {
  Casual,
  Occasional,
  Fashion,
}

enum Affordability {
  Regular,
  Sometime,
  Office,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final bool isCasual;
  final bool isOccasional;
  final bool isFashion;
  final bool isRegular;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.complexity,
    required this.affordability,
    required this.isCasual,
    required this.isFashion,
    required this.isRegular,
    required this.isOccasional,

  } );
}
