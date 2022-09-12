import 'package:geocoding/geocoding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  late Position cl;
  Future getPostion() async {
    bool services;
    LocationPermission per;
    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      AwesomeDialog(
          context: context,
          title: "services",
          body: Text("services not Enable "))
        ..show();
    }
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      if (per == LocationPermission.always) {
        getLatAndlong();
      }
    }
  }

  Future<Position> getLatAndlong() async {
    return await Geolocator.getCurrentPosition().then(((value) => value));
  }

  @override
  void initState() {
    getPostion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
              child: Center(
                  child: Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () async {
                      cl = await getLatAndlong();
                      print(cl.latitude);
                      print(cl.longitude);
                      List<Placemark> placemarks =
                          await placemarkFromCoordinates(
                              cl.latitude, cl.longitude);
                      // لقياس المسافة بين منطقتين
                      // var distancebetween = await Geolcator.distancebetween(startLatitude , startlongitude , end latitude , end longitud );
                      // var distancekm = distancebeetween / 1000;
                      // print(distancekm);
                      print(placemarks[0].street);
                    },
                    child: Text("show lat and long "))
              ],
            ),
          ))),
        ));
  }
}
