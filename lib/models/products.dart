class Products {
  int? id;
  String? brand;
  String? name;
  String? price;
  dynamic priceSign;
  dynamic currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  int? rating;
  dynamic category;
  String? productType;
  List<dynamic>? tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<dynamic>? productColors;

  Products({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    brand = json['brand'] as String?;
    name = json['name'] as String?;
    price = json['price'] as String?;
    priceSign = json['price_sign'];
    currency = json['currency'];
    imageLink = json['image_link'] as String?;
    productLink = json['product_link'] as String?;
    websiteLink = json['website_link'] as String?;
    description = json['description'] as String?;
    rating = json['rating'] as int?;
    category = json['category'];
    productType = json['product_type'] as String?;
    tagList = json['tag_list'] as List?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    productApiUrl = json['product_api_url'] as String?;
    apiFeaturedImage = json['api_featured_image'] as String?;
    productColors = json['product_colors'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['brand'] = brand;
    json['name'] = name;
    json['price'] = price;
    json['price_sign'] = priceSign;
    json['currency'] = currency;
    json['image_link'] = imageLink;
    json['product_link'] = productLink;
    json['website_link'] = websiteLink;
    json['description'] = description;
    json['rating'] = rating;
    json['category'] = category;
    json['product_type'] = productType;
    json['tag_list'] = tagList;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['product_api_url'] = productApiUrl;
    json['api_featured_image'] = apiFeaturedImage;
    json['product_colors'] = productColors;
    return json;
  }
}