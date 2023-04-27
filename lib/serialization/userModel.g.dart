// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => Drinks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'drinks': instance.drinks?.map((e) => e.toJson()).toList(),
    };

Drinks _$DrinksFromJson(Map<String, dynamic> json) => Drinks(
      idDrink: json['idDrink'] as String?,
      strDrink: json['strDrink'] as String?,
      strTags: json['strTags'] as String?,
      strCategory: json['strCategory'] as String?,
      strAlcoholic: json['strAlcoholic'] as String?,
      strGlass: json['strGlass'] as String?,
      strInstructions: json['strInstructions'] as String?,
      strInstructionsDE: json['strInstructionsDE'] as String?,
      strDrinkThumb: json['strDrinkThumb'] as String?,
      strIngredient1: json['strIngredient1'] as String?,
      strIngredient2: json['strIngredient2'] as String?,
      strIngredient3: json['strIngredient3'] as String?,
      strIngredient4: json['strIngredient4'] as String?,
      strIngredient5: json['strIngredient5'] as String?,
      strIngredient6: json['strIngredient6'] as String?,
      strMeasure1: json['strMeasure1'] as String?,
      strMeasure2: json['strMeasure2'] as String?,
      strMeasure3: json['strMeasure3'] as String?,
      strMeasure4: json['strMeasure4'] as String?,
      strMeasure5: json['strMeasure5'] as String?,
      strMeasure6: json['strMeasure6'] as String?,
      strCreativeCommonsConfirmed:
          json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] as String?,
    )..strInstructionsIT = json['strInstructionsIT'] as String?;

Map<String, dynamic> _$DrinksToJson(Drinks instance) => <String, dynamic>{
      'idDrink': instance.idDrink,
      'strDrink': instance.strDrink,
      'strTags': instance.strTags,
      'strCategory': instance.strCategory,
      'strAlcoholic': instance.strAlcoholic,
      'strGlass': instance.strGlass,
      'strInstructions': instance.strInstructions,
      'strInstructionsDE': instance.strInstructionsDE,
      'strInstructionsIT': instance.strInstructionsIT,
      'strDrinkThumb': instance.strDrinkThumb,
      'strIngredient1': instance.strIngredient1,
      'strIngredient2': instance.strIngredient2,
      'strIngredient3': instance.strIngredient3,
      'strIngredient4': instance.strIngredient4,
      'strIngredient5': instance.strIngredient5,
      'strIngredient6': instance.strIngredient6,
      'strMeasure1': instance.strMeasure1,
      'strMeasure2': instance.strMeasure2,
      'strMeasure3': instance.strMeasure3,
      'strMeasure4': instance.strMeasure4,
      'strMeasure5': instance.strMeasure5,
      'strMeasure6': instance.strMeasure6,
      'strCreativeCommonsConfirmed': instance.strCreativeCommonsConfirmed,
      'dateModified': instance.dateModified,
    };
