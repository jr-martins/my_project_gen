import 'package:my_project_gen/domain/models/hero_entity.dart';

abstract class UserRepository {
  Future<HeroEntity> getHeroData(context);
}