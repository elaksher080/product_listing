import 'package:flutter/material.dart';
import 'package:product_listing/presentation/bloc/product_bloc.dart';
import 'data/repositories/product_repository_impl.dart';
import 'di/injection.dart';
import 'domain/repositories/product_repository.dart';
import 'presentation/pages/product_page.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  configureInjection('prod');
  setupLocator();
  runApp(MyApp());
}

final GetIt sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        Provider<ProductBloc>(
          create: (_) => ProductBloc(productRepository: sl<ProductRepository>()),
        ),
      ],
      child: MaterialApp(
        title: 'Product Listing',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductPage(),
      ),
    );
  }
}
