import 'package:flutter/material.dart';
import 'package:my_project_gen/domain/models/hero_entity.dart';
import 'package:my_project_gen/domain/repositories/user_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  HomeViewModel({required this.userRepository});

  HeroEntity? _heroEntity;

  HeroEntity? get heroEntity => _heroEntity;

  Future<void> fetchHeroData(context) async {
    try {
      _heroEntity = await userRepository.getHeroData(context);
      notifyListeners();
    } catch (e) {
      print('Error fetching hero data: $e');
    }
  }
}