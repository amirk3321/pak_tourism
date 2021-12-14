

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pak_tourism/cubit/auth/auth_cubit.dart';
import 'package:pak_tourism/model/popular_cities_model.dart';
import 'package:pak_tourism/repository/repository.dart';
import 'package:pak_tourism/screens/pages/trip_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  TextEditingController _searchController = TextEditingController();
  final _popularCities = TravelRepository.popularCities;
  final _beautifulPlaces = TravelRepository.beautiful_places;
  final _historicalPlaces = TravelRepository.historical_places;

  List<PopularCitiesModel> searchData=[];





  bool _isLoadingData=false;


  @override
  void initState() {

    super.initState();
  }
  @override
  void dispose() {
    _searchController.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              _headerWidget(),
              SizedBox(
                height: 15,
              ),
              _searchWidget(),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Popular Cities",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black.withOpacity(.3))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _isLoadingData==true?Center(child: CircularProgressIndicator(),):searchData.isEmpty?Container(
                    height: 240,
                    child: PageView.builder(
                      itemCount:_popularCities.length,
                      physics: ScrollPhysics(),
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => TripDetails(
                                  popularCitiesModel: _popularCities[index],
                                )
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 120,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        child: Image.asset(
                                          _popularCities[index].image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Positioned(
                                    //   right: 0,
                                    //   bottom: 0,
                                    //   left: 0,
                                    //   child: Align(
                                    //     alignment: Alignment.bottomCenter,
                                    //     child: Container(
                                    //       decoration: BoxDecoration(
                                    //           color: Colors.black.withOpacity(.4)
                                    //       ),
                                    //       padding: EdgeInsets.symmetric(
                                    //           horizontal: 8, vertical: 8),
                                    //       child: Text(
                                    //         "${_popularCities[index].caption}",
                                    //         style: TextStyle(
                                    //             fontSize: 14,
                                    //             color: Colors.white),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                  ],
                                ),
                                Text(
                                  "${_popularCities[index].name}",
                                  textAlign: TextAlign.start,
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${_popularCities[index].caption}",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ):
                  Container(
                    height: 240,
                    child: PageView.builder(
                      itemCount:searchData.length,
                      physics: ScrollPhysics(),
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => TripDetails(
                                  popularCitiesModel: _popularCities[index],

                                )
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 290,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        child: Image.asset(
                                          _popularCities[index].image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      left: 0,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(.4)
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          child: Text(
                                            "${_popularCities[index].caption}",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                Text(
                                  "${_popularCities[index].name}",
                                  textAlign: TextAlign.start,
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Beautiful Places",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black.withOpacity(.3))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 240,
                    child: PageView.builder(
                      itemCount:_beautifulPlaces.length,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => TripDetails(
                                popularCitiesModel: _beautifulPlaces[index],
                                )
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 120,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        child: Image.asset(
                                          _beautifulPlaces[index].image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Positioned(
                                    //   right: 0,
                                    //   bottom: 0,
                                    //   left: 0,
                                    //   child: Align(
                                    //     alignment: Alignment.bottomCenter,
                                    //     child: Container(
                                    //       decoration: BoxDecoration(
                                    //           color: Colors.black.withOpacity(.4)
                                    //       ),
                                    //       padding: EdgeInsets.symmetric(
                                    //           horizontal: 8, vertical: 8),
                                    //       child: Text(
                                    //         "${_beautifulPlaces[index].caption}",
                                    //         style: TextStyle(
                                    //             fontSize: 14,
                                    //             color: Colors.white),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                  ],
                                ),
                                Text(
                                  "${_beautifulPlaces[index].name}",
                                  textAlign: TextAlign.start,
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${_beautifulPlaces[index].caption}",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Historical Places",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black.withOpacity(.3))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 240,
                    child: PageView.builder(
                      itemCount:_historicalPlaces.length,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => TripDetails(
                                  popularCitiesModel: _historicalPlaces[index],

                                )
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 120,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        child: Image.asset(
                                          _historicalPlaces[index].image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Positioned(
                                    //   right: 0,
                                    //   bottom: 0,
                                    //   left: 0,
                                    //   child: Align(
                                    //     alignment: Alignment.bottomCenter,
                                    //     child: Container(
                                    //       decoration: BoxDecoration(
                                    //           color: Colors.black.withOpacity(.4)
                                    //       ),
                                    //       padding: EdgeInsets.symmetric(
                                    //           horizontal: 8, vertical: 8),
                                    //       child: Text(
                                    //         "${_historicalPlaces[index].caption}",
                                    //         style: TextStyle(
                                    //             fontSize: 14,
                                    //             color: Colors.white),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                  ],
                                ),
                                Text(
                                  "${_historicalPlaces[index].name}",
                                  textAlign: TextAlign.start,
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${_historicalPlaces[index].caption}",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Explore Cities",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(onTap: (){
          BlocProvider.of<AuthCubit>(context).loggedOut();
        },child: Icon(Icons.exit_to_app)),
      ],
    );
  }

  Widget _searchWidget() {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.2),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: "Search...",
          border: InputBorder.none,
          suffixIcon: _searchController.text.isEmpty?null:InkWell(onTap: (){
            setState(() {
              _searchController.clear();
              searchData.clear();
            });
          },child: Icon(Icons.close)),
          prefixIcon: InkWell(onTap: (){
            setState(() {
              _isLoadingData=true;
              final data= TravelRepository.popularCities.where((city) {

                return city.name!.contains(_searchController.text)
                    || city.name!.toLowerCase().contains(_searchController.text.toLowerCase());

              }).toList();

              searchData.clear();
              data.forEach((element) {
                print(element.name);
                setState(() {
                  searchData.add(element);
                });
              });

              Future.delayed(Duration(seconds: 1),(){
                setState(() {
                  _isLoadingData=false;
                });
              });
              print(_popularCities.length);
            });

          },child: Icon(Icons.search)),
        ),
      ),
    );
  }

}
