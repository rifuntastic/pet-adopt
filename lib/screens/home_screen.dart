import 'package:flutter/material.dart';

import 'package:pet_adopt/constants/color_constant.dart';
import 'package:pet_adopt/constants/style_constant.dart';

import 'package:pet_adopt/models/categories_model.dart';
import 'package:pet_adopt/models/pet_model.dart';
import 'package:pet_adopt/screens/pet_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_rounded,
            color: fourthColor,
          ),
        ),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: firstColor,
                size: 15,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Your Location',
                style: appbarStyle,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: fourthColor,
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 992) {
            return Content(gridCount: 2);
          } else {
            return Content(gridCount: 3);
          }
        },
      ),
    );
  }
}

class Content extends StatelessWidget {
  final int gridCount;

  Content({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          //explore heading
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              'Explore friends',
              style: headingStyle,
            ),
          ),

          //search box
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: fifthColor,
                      boxShadow: [
                        BoxShadow(
                          color: fourthColor,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Search pet to adopt',
                        hintStyle: hintStyle,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: fourthColor,
                          size: 25,
                        ),
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //categories heading
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: headingStyle,
                ),
                Text(
                  'View All',
                  style: viewAllStyle,
                ),
              ],
            ),
          ),

          //categories list
          Container(
            height: 50,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 20, right: 20),
              scrollDirection: Axis.horizontal,
              itemCount: categoriesData.length,
              itemBuilder: (context, index) {
                final CategoriesModel category = categoriesData[index];
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 110,
                  decoration: BoxDecoration(
                    color: fifthColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(15.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            category.image,
                            width: 25,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text(
                              category.name,
                              overflow: TextOverflow.ellipsis,
                              style: categoryStyle,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          //nearby heading
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nearby pets',
                  style: headingStyle,
                ),
                Text(
                  'View All',
                  style: viewAllStyle,
                ),
              ],
            ),
          ),

          //nearby list
          GridView.builder(
            padding: EdgeInsets.only(left: 20, right: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              final PetsModel pet = petsData[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PetScreen(pet: pet);
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Ink.image(
                          image: NetworkImage(
                            pet.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          pet.name,
                          style: petHeadingStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pet.age,
                              style: petSubHeadingStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.near_me_rounded,
                                  color: firstColor,
                                  size: 12,
                                ),
                                Text(
                                  pet.location,
                                  style: petSubHeadingStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            },
          ),

          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
