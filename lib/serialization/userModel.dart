import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  List<Drinks>? drinks;
  String? error;

  UserModel({this.drinks});
  UserModel.withError(String errorMessage) {
    error = errorMessage;
  }
  //FromJson
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  //ToJson
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Drinks {
  String? idDrink;
  String? strDrink;

  String? strTags;

  String? strCategory;

  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;

  String? strInstructionsDE;

  String? strInstructionsIT;

  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;

  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;

  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Drinks(
      {this.idDrink,
      this.strDrink,
      this.strTags,
      this.strCategory,
      this.strAlcoholic,
      this.strGlass,
      this.strInstructions,
      this.strInstructionsDE,
      this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  //FromJson
  factory Drinks.fromJson(Map<String, dynamic> json) => _$DrinksFromJson(json);

  //ToJson
  Map<String, dynamic> toJson() => _$DrinksToJson(this);
}
