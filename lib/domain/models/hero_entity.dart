import 'mcu.dart';

class HeroEntity {
  List<Mcu>? mcu;

  HeroEntity({this.mcu});

  HeroEntity.fromJson(Map<String, dynamic> json) {
    if (json['mcu'] != null) {
      mcu = <Mcu>[];
      json['mcu'].forEach((v) {
        mcu!.add(Mcu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.mcu != null) {
      data['mcu'] = this.mcu!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}