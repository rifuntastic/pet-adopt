class CategoriesModel {
  String name;
  String image;

  CategoriesModel({
    required this.name,
    required this.image,
  });
}

var categoriesData = [
  CategoriesModel(
    name: 'Cat',
    image: 'assets/images/cat.png',
  ),
  CategoriesModel(
    name: 'Dog',
    image: 'assets/images/dog.png',
  ),
  CategoriesModel(
    name: 'Bird',
    image: 'assets/images/bird.png',
  ),
  CategoriesModel(
    name: 'Hamster',
    image: 'assets/images/hamster.png',
  ),
  CategoriesModel(
    name: 'Rabbit',
    image: 'assets/images/rabbit.png',
  ),
];
