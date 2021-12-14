

import 'package:flutter/material.dart';
import 'package:pak_tourism/repository/repository.dart';
import 'package:pak_tourism/screens/pages/trip_details.dart';

class AllPlacesPage extends StatefulWidget {
  const AllPlacesPage({Key? key}) : super(key: key);

  @override
  _AllPlacesPageState createState() => _AllPlacesPageState();
}

class _AllPlacesPageState extends State<AllPlacesPage> {
  final _popularCities = TravelRepository.popularCities;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Places"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
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
                margin: EdgeInsets.only(right: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 290,
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
    );
  }
}
