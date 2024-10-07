// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) =>
    ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class Category {
  int? id;
  String? name;
  String? image;
  String? topColor;
  String? bottomColor;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  Category({
    this.id,
    this.name,
    this.image,
    this.topColor,
    this.bottomColor,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        topColor: json["top_color"],
        bottomColor: json["bottom_color"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "top_color": topColor,
        "bottom_color": bottomColor,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "deletedAt": deletedAt,
      };
}

class Datum {
  int? id;
  String? name;
  String? image;
  String? coverImage;
  String? time;
  String? description;
  String? price;
  String? adminPrice;
  String? packagingCharges;
  int? discount;
  String? vote;
  int? customizeSpice;
  int? freeDelivery;
  int? bestSeller;
  int? recommended;
  int? acceptReject;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? userId;
  int? restaurentId;
  int? foodTypeId;
  int? categoryId;
  Category? foodType;
  Category? category;

  Datum({
    this.id,
    this.name,
    this.image,
    this.coverImage,
    this.time,
    this.description,
    this.price,
    this.adminPrice,
    this.packagingCharges,
    this.discount,
    this.vote,
    this.customizeSpice,
    this.freeDelivery,
    this.bestSeller,
    this.recommended,
    this.acceptReject,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.userId,
    this.restaurentId,
    this.foodTypeId,
    this.categoryId,
    this.foodType,
    this.category,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        coverImage: json["cover_image"],
        time: json["time"],
        description: json["description"],
        price: json["price"],
        adminPrice: json["admin_price"],
        packagingCharges: json["packaging_charges"],
        discount: json["discount"],
        vote: json["vote"],
        customizeSpice: json["customize_spice"],
        freeDelivery: json["free_delivery"],
        bestSeller: json["best_seller"],
        recommended: json["recommended"],
        acceptReject: json["accept_reject"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
        userId: json["user_id"],
        restaurentId: json["restaurent_id"],
        foodTypeId: json["food_type_id"],
        categoryId: json["category_id"],
        foodType: json["food_type"] == null
            ? null
            : Category.fromJson(json["food_type"]),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "cover_image": coverImage,
        "time": time,
        "description": description,
        "price": price,
        "admin_price": adminPrice,
        "packaging_charges": packagingCharges,
        "discount": discount,
        "vote": vote,
        "customize_spice": customizeSpice,
        "free_delivery": freeDelivery,
        "best_seller": bestSeller,
        "recommended": recommended,
        "accept_reject": acceptReject,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "deletedAt": deletedAt,
        "user_id": userId,
        "restaurent_id": restaurentId,
        "food_type_id": foodTypeId,
        "category_id": categoryId,
        "food_type": foodType?.toJson(),
        "category": category?.toJson(),
      };
}

class ProductsModel {
  bool? success;
  int? code;
  List<Datum>? data;
  String? message;

  ProductsModel({
    this.success,
    this.code,
    this.data,
    this.message,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        success: json["success"],
        code: json["code"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "code": code,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}
