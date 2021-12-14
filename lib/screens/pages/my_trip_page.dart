import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pak_tourism/repository/repository.dart';
import 'package:pak_tourism/screens/pages/trip_details.dart';


class MyTripPage extends StatelessWidget {
  final _popularCities = TravelRepository.popularCities;
  final _beautiful_places = TravelRepository.beautiful_places;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Trips",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ))
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _popularCities.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => TripDetails(
                          popularCitiesModel: _popularCities[index],
                        ),
                      ),);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on,color: Colors.black,),
                              SizedBox(width: 5,),
                              Text(_popularCities[index].population!,style: TextStyle(fontSize: 18,color: Colors.black),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Stack(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 150,
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
                                bottom: 48,
                                left: 8,
                                child: Container(
                                  child: Text(
                                    _popularCities[index].name!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 28,
                                left: 8,
                                child: Container(
                                  child: Text(
                                    _popularCities[index].name!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                left: 8,
                                child: Container(
                                  child: Text(
                                    _popularCities[index].caption!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
