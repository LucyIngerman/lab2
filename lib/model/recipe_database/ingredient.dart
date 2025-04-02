class Ingredient {
  final String name;
  final int amount;
  final String unit;

  static const _nameKey = 'name';
  static const _amountKey = 'amount';
  static const _unitKey = 'unit';

  Ingredient(this.name, this.amount, this.unit);

  Ingredient.fromJson(Map<String, dynamic> json)
    : name = json[_nameKey],
      amount = json[_amountKey],
      unit = json[_unitKey];

  @override
  String toString() {
    return '$amount $unit $name';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    final Ingredient otherIngredient = other as Ingredient;
    return name == otherIngredient.name;
  }

  @override
  int get hashCode {
    int hash = 5;
    hash = 59 * hash + name.hashCode;
    return hash;
  }
}
