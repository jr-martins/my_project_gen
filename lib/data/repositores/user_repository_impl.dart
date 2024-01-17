import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_project_gen/domain/models/hero_entity.dart';
import 'package:my_project_gen/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<HeroEntity> getHeroData(context) async {
    try {
      final String jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/mock/mock.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      return HeroEntity.fromJson(jsonData);
    } catch (e) {
      throw Exception('Failed to fetch hero data');
    }
  }
}
