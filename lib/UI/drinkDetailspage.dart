import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:task_for_ailoitte/serialization/userModel.dart';

class DrinksDetailsPage extends StatelessWidget {
  static const String routeName = '/DrinksDetailsPage';
  DrinksDetailsPage(
      {super.key,
      required this.selectedDrinkName,
      this.selectedImage,
      this.selectedCategory,
      this.selectedAlcoholic,
      this.selectedGlass,
      this.selectedIngredient2,
      this.selectedIngredient3,
      this.selectedIngredient4,
      this.selectedIngredient5,
      this.selectdInstructions,
      this.dateModified});

  String? selectedDrinkName,
      selectedImage,
      selectedCategory,
      selectedAlcoholic,
      selectedGlass,
      selectedIngredient2,
      selectedIngredient3,
      selectedIngredient4,
      selectedIngredient5,
      selectdInstructions,
      dateModified;
  // List<String>   selectedDrink;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromRGBO(242, 242, 255, 1),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Drinks Detilas Page",
          ),
          // backgroundColor: CustomizedColors.primaryColor,
          elevation: 0.2,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: <Widget>[
                  Container(
                    color: Color.fromRGBO(242, 242, 255, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(163, 193, 211, 1),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                          bottomRight: Radius.circular(80.0),
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 50.0,
                        bottom: 30,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                heroWidget(context, 25),
                                SizedBox(
                                  width: 40,
                                ),
                                headingTitel(
                                  selectedDrinkName.toString(),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  headingTitel(
                                    "Drink Ingredients",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "* " + selectedIngredient2.toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "* " + selectedIngredient3.toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "* " + selectedIngredient4.toString(),
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Drink Type : "),
                        Text(
                          selectedCategory.toString(),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Type Of Ingredient : "),
                        Text(
                          selectedIngredient5.toString(),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Alcoholic / Non-Alcoholic : "),
                        Text(
                          selectedAlcoholic.toString(),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Glass Type : "),
                        Text(
                          selectedGlass.toString(),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Drink Details : "),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: headingTitel(
                            selectdInstructions.toString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        headingTitel("Modified Date : "),
                        Text(
                          dateModified.toString(),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget headingTitel(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 8),
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        maxLines: 10,
        style: txtBold14,
      ),
    );
  }

  static TextStyle txtBold14 = TextStyle(
    color: Colors.grey[900],
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );
  Widget bodyTitel(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 3, left: 8),
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        softWrap: false,
        maxLines: 10,
        style: txtGray600,
      ),
    );
  }

  static TextStyle txtGray600 = TextStyle(
    color: Colors.grey[600],
    fontSize: 10,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
  //....hero widget
  Widget heroWidget(BuildContext context, radious) {
    // final ScheduleList item = ModalRoute.of(context).settings.arguments;
    return Hero(
      transitionOnUserGestures: true,
      tag: "",
      child: Transform.scale(
        scale: 2.0,
        child: CircleAvatar(
          radius: radious,
          child: ClipOval(
            child: Image.network(selectedImage.toString()),
          ),
        ),
      ),
    );
  }
}
