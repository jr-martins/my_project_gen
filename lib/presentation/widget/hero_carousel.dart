import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project_gen/domain/models/mcu.dart';
import 'package:my_project_gen/presentation/widget/hero_card_widget.dart';

class HeroCarousel extends StatelessWidget {
  final List<Mcu> mcuList;

  const HeroCarousel({super.key, required this.mcuList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mcuList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: HeroCard(mcu: mcuList[index]),
        );
      },
    );
  }



}
