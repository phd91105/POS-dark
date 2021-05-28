// To parse this JSON data, do
//
//     final foodOrder = foodOrderFromJson(jsonString);

import 'dart:convert';

List<FoodOrder> foodOrderFromJson(String str) =>
    List<FoodOrder>.from(json.decode(str).map((x) => FoodOrder.fromJson(x)));

String foodOrderToJson(List<FoodOrder> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodOrder {
  FoodOrder({
    required this.id,
    required this.name,
    required this.price,
  });

  int id;
  String name;
  int price;

  factory FoodOrder.fromJson(Map<String, dynamic> json) => FoodOrder(
        id: json["id"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
      };
}
