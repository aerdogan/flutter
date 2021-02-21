import 'dart:async';
import 'package:CartDemo/data/product_service.dart';
import 'package:CartDemo/models/product.dart';

class ProductBloc {
  // final : çalışma anında set edilen const
  final productStreamController = StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll() {
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();
