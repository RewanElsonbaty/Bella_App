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
      drawer:  Drawer(
        child:Padding(
          padding: const EdgeInsets.all(12),
          child:  Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.orange.withOpacity(0.1),
                    radius: 30,
                    child: const Icon(Icons.person,color: AppColors.orange,size: 35,),
                  ),
                  const SizedBox(width: 10,),
                  const Text("Rewan Elsonbaty",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.orange
                  ),)
                ],
              ),
              const SizedBox(height: 15,),
              const Padding(padding: EdgeInsets.only(left: 8),
                child:  Row(
                children: [
                  Icon(Icons.restaurant_menu_rounded,color: AppColors.orange,),
                  SizedBox(width: 5,),
                  Text("Menu",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),)
                ],),),
              const SizedBox(height: 15,),
              const Padding(padding: EdgeInsets.only(left: 8),
                child:  Row(
                children: [
                  Icon(Icons.sentiment_satisfied_alt,color: AppColors.orange,),
                  SizedBox(width: 5,),
                  Text("About Us",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),)
                ],),),
              const SizedBox(height: 15,),
              const Padding(padding: EdgeInsets.only(left: 8),
                child: Row(
                children: [
                  Icon(Icons.person_pin_outlined,color: AppColors.orange,),
                  SizedBox(width: 5,),
                  Text("Contact Us",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),)
                ],),)
            ],
          ),
        )
      ),
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