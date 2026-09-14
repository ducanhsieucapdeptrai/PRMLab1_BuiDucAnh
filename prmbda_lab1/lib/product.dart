class Product {
  final String id;
  final String name;
  final double price;
  final String? image;
  final String? description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.image,
    this.description,
  });

  // Có thể thêm factory từ Map nếu cần (ví dụ khi làm việc với JSON)
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }
}
