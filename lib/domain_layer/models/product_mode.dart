class ProductModel {
  String name;
  String description;
  bool highlighted;
  DateTime createdAt;
  PriceObjectValue priceObjectValue;

  ProductModel(
      this.name, this.description, this.highlighted, this.createdAt,
      this.priceObjectValue);

  toJson(){
    return {
      "name": name,
      "description": description,
      "highlighted": highlighted,
      "createdAt": createdAt,
      "price": priceObjectValue.price,
      "currency": priceObjectValue.currency
    };
  }
}

class PriceObjectValue {
  double price;
  String currency;

  PriceObjectValue(
      this.price, this.currency);
}