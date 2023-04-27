import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_for_ailoitte/bloc/drink-bloc.dart';
import 'package:task_for_ailoitte/bloc/drink-event.dart';
import 'package:task_for_ailoitte/bloc/drink-state.dart';
import 'package:task_for_ailoitte/UI/drinkDetailspage.dart';
import 'package:task_for_ailoitte/serialization/userModel.dart';

class DrinkPage extends StatefulWidget {
  static const String routeName = '/DrinkPage';
  const DrinkPage({Key? key}) : super(key: key);

  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  final DrinkBloc _drinkBloc = DrinkBloc();

  @override
  void initState() {
    _drinkBloc.add(GetDrinkList());
    super.initState();
  }

  List<UserModel> totalUsers = [];

  void search(String searchQuery) {
    List<UserModel> searchResult = [];
    print("**************");
    print(searchResult);

    if (searchQuery.isEmpty) {
      return;
    }
    totalUsers.forEach((user) {
      if (user.drinks!.first.strDrink!
              .toLowerCase()
              .contains(searchQuery.toLowerCase()) ||
          user.drinks!.first.strDrink!
              .toLowerCase()
              .contains(searchQuery.toLowerCase())) {
        searchResult.add(user);
        print("**************");
        print(searchResult);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(163, 193, 211, 1),
      appBar: AppBar(
          backgroundColor: Colors.black, title: const Text('Property List')),
      body: _buildListCovid(),
    );
  }

  Widget _buildListCovid() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _drinkBloc,
        child: BlocListener<DrinkBloc, DrinkState>(
          listener: (context, state) {
            if (state is DrinkError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<DrinkBloc, DrinkState>(
            builder: (context, state) {
              if (state is DrinkInitial) {
                return _buildLoading();
              } else if (state is DrinkLoading) {
                return _buildLoading();
              } else if (state is DrinkLoaded) {
                return _buildCard(context, state.drinkModel);
              } else if (state is DrinkError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  TextEditingController SerchController = TextEditingController();

  Widget _buildCard(BuildContext context, UserModel model) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: SerchController,
            onChanged: (text) => search(text),
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search...',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3.1, color: Colors.red),
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: model.drinks!.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.amber[100],
                elevation: 2,
                child: InkWell(
                  onTap: ()
                      // {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => DrinksDetailsPage(),
                      //               settings: RouteSettings(
                      //                 arguments: index,
                      //               ),
                      //             ),
                      //           );
                      //         },
                      {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrinksDetailsPage(
                                selectedDrinkName:
                                    model.drinks![index].strDrink,
                                selectedImage:
                                    model.drinks![index].strDrinkThumb,
                                selectedCategory:
                                    model.drinks![index].strCategory,
                                dateModified: model.drinks![index].dateModified,
                                selectdInstructions:
                                    model.drinks![index].strInstructions,
                                selectedAlcoholic:
                                    model.drinks![index].strAlcoholic,
                                selectedGlass: model.drinks![index].strGlass,
                                selectedIngredient2:
                                    model.drinks![index].strIngredient2,
                                selectedIngredient3:
                                    model.drinks![index].strIngredient3,
                                selectedIngredient4:
                                    model.drinks![index].strIngredient4,
                                selectedIngredient5:
                                    model.drinks![index].strIngredient5,
                              )),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 196, 193, 193),
                            width: 0.5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              child: ClipOval(
                                child: Image.network(
                                    "${model.drinks![index].strDrinkThumb}"),
                              ),
                            ),
                            Text(
                              "${model.drinks![index].strDrink}",
                            ),
                          ],
                        ),
                        Text(
                          "${model.drinks![index].strCategory}",
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${model.drinks![index].strIngredient2}",
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${model.drinks![index].strInstructions}",
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
