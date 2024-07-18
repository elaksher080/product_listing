import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['products'];
      return data.map((item) => ProductModel.fromJson(item).toEntity()).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
