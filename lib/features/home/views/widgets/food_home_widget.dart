import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import '../../data/models/food_model.dart';

class HomeFoodWidget extends StatefulWidget {
  const HomeFoodWidget({super.key, required this.index});

  final int index;

  @override
  State<HomeFoodWidget> createState() => _HomeFoodWidgetState();
}

class _HomeFoodWidgetState extends State<HomeFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14)
          ),
          child: Column(
            children: [
              Image.asset(foods[widget.index].image ,
                height: 96,
                width: 96,
              ),
              Text(foods[widget.index].title),
              const SizedBox(height: 5,),
              Text("${foods[widget.index].price} \$",
                style: const TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.bold
                ),
              ),
            //   const SizedBox(height: 3,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10.0 ,
              vertical: 10
          ),
          child: GestureDetector(
            onTap: ( ) {

              setState(() {
                foods[widget.index].fav = !foods[widget.index].fav;

              });
            },
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.orange.withOpacity(0.1),
              child:    Icon(

                foods[widget.index].fav == true?
                Icons.favorite
                    :
                Icons.favorite_border,
                color: AppColors.orange,
              ),
            ),
          ),
        ),
      ],
    );
  }
}