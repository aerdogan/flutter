import 'dart:async';
import 'package:CartDemo/data/cart_service.dart';
import 'package:CartDemo/models/cart.dart';

class CartBloc {
  // final : çalışma anında set edilen const
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item) {
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getCart() {
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();
