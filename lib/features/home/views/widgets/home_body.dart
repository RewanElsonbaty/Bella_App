import 'package:bella/features/home/data/models/food_model.dart';
import 'package:bella/features/home/views/widgets/banner_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food_home_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:         CustomBanner(),
          )  ,
          SliverGrid.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2

          ),
              itemCount: foods.length,
              itemBuilder: (c,index) {
                return   HomeFoodWidget(
                  index:index ,
                );
              })

        ],
      ),
    );
  }
}