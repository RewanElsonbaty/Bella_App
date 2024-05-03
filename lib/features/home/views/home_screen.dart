import 'package:bella/core/utils/app_images.dart';
import 'package:bella/features/favourites/views/favorite_screen.dart';
import 'package:bella/features/home/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =  0;


  List<Widget> screens  = [
    // current index  = 0
    const HomeBody() ,
    const FavoriteScreen()

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:AppBar(backgroundColor: AppColors.scaffoldColor,
        centerTitle:true ,
        title: Image.asset(AppImages.bellaLogo,
          height: MediaQuery.of(context).size.height*0.04,
        ),
      ) ,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (bottomIndex){

          print(bottomIndex.toString());
          setState(() {
            currentIndex = bottomIndex;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite"    ,
          ),

        ],

      ),
      body:screens[currentIndex],
      // body: ,
    );
  }
}