import '../../domain/entities/product.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final double rating;
  final String thumbnail;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      rating: json['rating'].toDouble(),
      thumbnail: json['thumbnail'],
    );
  }

  Product toEntity() {
    return Product(
      id: id,
      title: title,
      description: description,
      price: price,
      rating: rating,
      thumbnail: thumbnail,
    );
  }
}
