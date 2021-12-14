

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pak_tourism/repository/repository.dart';
import 'package:pak_tourism/screens/pages/trip_details.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  final Completer<GoogleMapController> _controller = Completer();
  //Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(45.811328, 15.975862), zoom: 8),
              markers: markers.toSet(),
              zoomControlsEnabled: false,
              zoomGesturesEnabled: true,
              compassEnabled: true,
              trafficEnabled: true,
              mapToolbarEnabled: true,
              indoorViewEnabled: true,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Positioned(
            bottom: 35,
            right: 0,
            left: 0,
            child: _listItem(),
          ),
        ],
      ),
    );
  }

  _listItem() {
    return Container(
      height: 125,
      child: PageView.builder(
        itemCount: TravelRepository.popularCities.length,

        onPageChanged: (index) async {

        },
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () async {
            },
            child: Container(
              height: 125,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 15, right: 25,left: index==0?25:0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 2,
                        spreadRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      //FIXME:navigate to
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => TripDetails(
                            popularCitiesModel: TravelRepository.popularCities[index],
                          )
                      ));
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(TravelRepository.popularCities[index].image!,fit: BoxFit.cover,)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("${TravelRepository.popularCities[index].name}"),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "${TravelRepository.popularCities[index].caption}",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
