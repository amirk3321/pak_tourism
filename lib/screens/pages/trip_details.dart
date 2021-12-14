import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:map_launcher/map_launcher.dart' as lunch;
import 'package:map_launcher/map_launcher.dart';
import 'package:pak_tourism/model/popular_cities_model.dart';
import 'package:pak_tourism/repository/repository.dart';

class TripDetails extends StatefulWidget {
    final PopularCitiesModel popularCitiesModel;
  const TripDetails({Key? key, required this.popularCitiesModel})
      : super(key: key);

  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  final _myTrips = TravelRepository.popularCities;


  _getDirection() async {
    final availableMaps =
    await lunch.MapLauncher.installedMaps;

    final data = await lunch.MapLauncher.isMapAvailable(lunch.MapType.google);
    if (data!) {

      await lunch.MapLauncher.launchMap(
        coords: Coords(widget.popularCitiesModel.lat!, widget.popularCitiesModel.lat!),
          mapType: lunch.MapType.google,
        title: "",
      );
    } else {
      print("not avaiable");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _headerWidget(),
            _bodyContent(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            widget.popularCitiesModel.image!,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 35, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Trip Details",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.popularCitiesModel.name!,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _bodyContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "${widget.popularCitiesModel.name}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "${widget.popularCitiesModel.caption}",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          widget.popularCitiesModel.activeFriends==null?Text(
            "${widget.popularCitiesModel.activeFriends}",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ):Text(""),
          SizedBox(
            height: 15,
          ),
          widget.popularCitiesModel.hotelRent==null?Text(
            "${widget.popularCitiesModel.hotelRent}",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ):Text(""),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              _getDirection();
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Get Direction")),
            ),
          )
        ],
      ),
    );
  }
}
