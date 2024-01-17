import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project_gen/presentation/screens/viewmodels/home_viewmodel.dart';
import 'package:my_project_gen/presentation/widget/hero_carousel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeViewModel>(context, listen: false).fetchHeroData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.heroEntity == null) {
            return Center(child:  CircularProgressIndicator());
          } else {
            String backdropPath =
                viewModel.heroEntity!.mcu?.first.backdropPath ?? '';

            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://image.tmdb.org/t/p/original$backdropPath'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Image.asset(
                      'assets/image/marvel.png',
                      width: 232.w,
                    ),
                  ),
                ),
                body(viewModel),
              ],
            );
          }
        },
      ),
    );
  }

  Widget body(HomeViewModel viewModel) {
    return ListView(reverse: true, children: [
      SizedBox(
          height: 525.h,
          child: HeroCarousel(mcuList: viewModel.heroEntity!.mcu!)),
      Padding(
        padding: EdgeInsets.only(left: 18.w, bottom: 20.h),
        child: Text(
          'Linha do tempo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
