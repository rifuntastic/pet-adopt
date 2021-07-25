import 'package:flutter/material.dart';

import 'package:pet_adopt/constants/color_constant.dart';
import 'package:pet_adopt/constants/style_constant.dart';

import 'package:pet_adopt/models/pet_model.dart';

class PetScreen extends StatelessWidget {
  final PetsModel pet;

  PetScreen({required this.pet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 992) {
          return WebContent(pet: pet);
        } else {
          return MobileContent(pet: pet);
        }
      },
    );
  }
}

class MobileContent extends StatelessWidget {
  final PetsModel pet;

  MobileContent({required this.pet});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //cover
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        pet.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: fifthColor,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: firstColor,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          FavoriteButton()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //pet heading
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    pet.name,
                    style: headingStyle,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                      Text(
                        'Posted on 01 Jul, 2021',
                        style: petSubHeadingStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //pet content
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: fifthColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            pet.age,
                            style: petHeadingStyle,
                          ),
                          Text(
                            'Age',
                            style: petSubHeadingStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: fifthColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            pet.gender,
                            style: petHeadingStyle,
                          ),
                          Text(
                            'Gender',
                            style: petSubHeadingStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: fifthColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            pet.weight,
                            style: petHeadingStyle,
                          ),
                          Text(
                            'Weight',
                            style: petSubHeadingStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //detailed heading
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Text(
                'Detailed Story',
                style: petHeadingStyle,
              ),
            ),

            //detailed content
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Text(pet.story),
            ),

            //owner heading
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Text(
                'Owner',
                style: petHeadingStyle,
              ),
            ),

            //owner content
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: secondColor,
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pet.ownerName,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: firstColor,
                                size: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Owner\'s Location',
                                style: petSubHeadingStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.message_rounded,
                          color: fifthColor,
                          size: 18,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: firstColor,
                          elevation: 0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.call_rounded,
                          color: fifthColor,
                          size: 18,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: firstColor,
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class WebContent extends StatelessWidget {
  final PetsModel pet;

  WebContent({required this.pet});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(45),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: fifthColor,
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Container(
                        height: size.width <= 1400 ? 400 : 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(pet.image),
                          ),
                        ),
                        child: SafeArea(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [FavoriteButton()],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 50,
                ),

                //right content
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: firstColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //pet heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              pet.name,
                              style: headingStyle,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                                Text(
                                  'Posted on 01 Jul, 2021',
                                  style: petSubHeadingStyle,
                                ),
                              ],
                            ),
                          ],
                        ),

                        //pet content
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: fifthColor,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: fourthColor),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        pet.age,
                                        style: petHeadingStyle,
                                      ),
                                      Text(
                                        'Age',
                                        style: petSubHeadingStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: fifthColor,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: fourthColor),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        pet.gender,
                                        style: petHeadingStyle,
                                      ),
                                      Text(
                                        'Gender',
                                        style: petSubHeadingStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: fifthColor,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: fourthColor),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        pet.weight,
                                        style: petHeadingStyle,
                                      ),
                                      Text(
                                        'Weight',
                                        style: petSubHeadingStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //detailed heading
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Detailed Story',
                            style: petHeadingStyle,
                          ),
                        ),

                        //detailed content
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(pet.story),
                        ),

                        //owner heading
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Owner',
                            style: petHeadingStyle,
                          ),
                        ),

                        //owner content
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: secondColor,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar.jpg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        pet.ownerName,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on_rounded,
                                            color: firstColor,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'Owner\'s Location',
                                            style: petSubHeadingStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.message_rounded,
                                      color: fifthColor,
                                      size: 18,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      primary: firstColor,
                                      elevation: 0,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.call_rounded,
                                      color: fifthColor,
                                      size: 18,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      primary: firstColor,
                                      elevation: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: fifthColor,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: firstColor,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
