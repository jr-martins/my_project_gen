import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project_gen/domain/models/mcu.dart';

class HeroCard extends StatelessWidget {
  final Mcu mcu;

  HeroCard({required this.mcu});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 9,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w200${mcu.posterPath}',
                  fit: BoxFit.cover,
                ))),
        SizedBox(height: 8.h),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 300.w,
            child: Column(
              children: [
                Text(
                  mcu.title ?? '',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mcu.releaseDate ?? '',
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
