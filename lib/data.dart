import 'package:flutter/material.dart';
import 'models/category.dart';
import 'clothes.dart';

const Dummy_Categories = const [
  Category(id: '1', title: 'Midi Dress', color: Colors.deepPurple),
  Category(id: '2', title: 'Off the Shoulder', color: Colors.deepPurple),
  Category(id: '3', title: 'Shift Dress', color: Colors.deepPurple),
  Category(id: '4', title: 'Body Con Dress', color: Colors.deepPurple),
  Category(id: '5', title: 'A Line Dress', color: Colors.deepPurple),
  Category(id: '6', title: 'Mini Dress', color: Colors.deepPurple),
  Category(id: '7', title: 'Maxi Dress', color: Colors.deepPurple),
  Category(id: '8', title: 'Wrap dress', color: Colors.deepPurple),
  Category(id: '9', title: 'Hatler Dress', color: Colors.deepPurple),
  Category(id: '10', title: 'High Low Dress', color: Colors.deepPurple),
  Category(id: '11', title: 'Sheath Dress', color: Colors.deepPurple),
  Category(id: '12', title: 'Peplum Dress', color: Colors.deepPurple),
  Category(id: '13', title: 'Sweater Dress', color: Colors.deepPurple),
  Category(id: '14', title: 'Pencil Dress', color: Colors.deepPurple),
  Category(id: '15', title: 'Shirt Dress', color: Colors.deepPurple),
  Category(id: '16', title: 'Slip Dress', color: Colors.deepPurple),
  Category(id: '17', title: 'Smock Dress', color: Colors.deepPurple),
  Category(id: '18', title: 'Ballgown', color: Colors.deepPurple),
  Category(id: '19', title: 'Mermaid Silhouette Dress', color: Colors.deepPurple),
  Category(id: '20', title: 'T-shirt Dress', color: Colors.deepPurple),
  Category(id: '21', title: 'Tea Length Dress', color: Colors.deepPurple),
  Category(id: '22', title: 'Cocktail Dress', color: Colors.deepPurple),
  Category(id: '23', title: 'Denim Dress', color: Colors.deepPurple),
  Category(id: '24', title: 'Pinafore Dress', color: Colors.deepPurple),
  Category(id: '25', title: 'Bardot Dress', color: Colors.deepPurple),
  Category(id: '26', title: 'Tube Dress', color: Colors.deepPurple),
  Category(id: '27', title: 'Qipao Dress', color: Colors.deepPurple),
  Category(id: '28', title: 'Long Sleeve Dress', color: Colors.deepPurple),
  Category(id: '29', title: 'Bell-Sleeve Dress', color: Colors.deepPurple),
  Category(id: '30', title: 'Strapless Dress', color: Colors.deepPurple),
  Category(id: '31', title: 'Blazer Dress', color: Colors.deepPurple),
  Category(id: '32', title: 'Empire Waist Dress', color: Colors.deepPurple),
  Category(id: '33', title: 'Sun Dress', color: Colors.deepPurple),
  Category(id: '34', title: 'Kimono Dress', color: Colors.deepPurple),
  Category(id: '35', title: 'One Shoulder Dress', color: Colors.deepPurple),
  Category(id: '36', title: 'Handkerchief Hem Dress', color: Colors.deepPurple),
  Category(id: '37', title: 'Asymmetrical Dress', color: Colors.deepPurple),
  Category(id: '38', title: 'Bandage Dress', color: Colors.deepPurple),
  Category(id: '39', title: 'Pouf Dress', color: Colors.deepPurple),
  Category(id: '40', title: 'Princess Silhouette Dress', color: Colors.deepPurple)

];

const dummy_clothes = [
  Meal(
    id: 'm1',
    categories: [
      '1',
      '2',
    ],
    title: 'Blue Red',
    affordability: Affordability.Regular,
    complexity: Complexity.Casual,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    isCasual: false,
    isFashion: true,
    isRegular: true,
    isOccasional: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      '2',
    ],
    title: 'Hawaii',
    affordability: Affordability.Regular,
    complexity: Complexity.Casual,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    isCasual: false,
    isFashion: false,
    isRegular: false,
    isOccasional: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      '2',
      '3',
    ],
    title: 'Classic',
    affordability: Affordability.Sometime,
    complexity: Complexity.Casual,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    isCasual: false,
    isFashion: false,
    isRegular: false,
    isOccasional: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      '4',
    ],
    title: 'Wiener ',
    affordability: Affordability.Office,
    complexity: Complexity.Fashion,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    isCasual: false,
    isFashion: false,
    isRegular: false,
    isOccasional: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      '2'
          '5',
      '10',
    ],
    title: 'White short',
    affordability: Affordability.Office,
    complexity: Complexity.Casual,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',

    isCasual: true,
    isFashion: false,
    isRegular: true,
    isOccasional: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      '6',
      '10',
    ],
    title: 'Grey',
    affordability: Affordability.Regular,
    complexity: Complexity.Occasional,
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',

    isCasual: true,
    isFashion: false,
    isRegular: true,
    isOccasional: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      '7',
    ],
    title: 'Black',
    affordability: Affordability.Regular,
    complexity: Complexity.Casual,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    isCasual: true,
    isFashion: false,
    isRegular: true,
    isOccasional: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      '8',
    ],
    title: 'White Red',
    affordability: Affordability.Sometime,
    complexity: Complexity.Fashion,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    isCasual: true,
    isFashion: false,
    isRegular: false,
    isOccasional: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      '9',
    ],
    title: 'Chocolate',
    affordability: Affordability.Regular,
    complexity: Complexity.Occasional,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    isCasual: true,
    isFashion: false,
    isRegular: true,
    isOccasional: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      '2',
      '5',
      '10',
    ],
    title: 'Green ',
    affordability: Affordability.Office,
    complexity: Complexity.Casual,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    isCasual: true,
    isFashion: true,
    isRegular: true,
    isOccasional: true,
  ),
];
