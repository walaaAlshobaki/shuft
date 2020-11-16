import 'dart:async';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'MyIconSpinner.dart';
import 'SearchClass.dart';
import 'package:permission/permission.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  // Initial location of the Map view
  Completer<GoogleMapController> _controller = Completer();
  Completer<GoogleMapController> controller1;
  BuildContext context;
  bool a0 = false;
  PermissionName permissionName = PermissionName.Internet;
  String message = '';
  //static LatLng _center = LatLng(-15.4630239974464, 28.363397732282127);
  static LatLng _initialPosition;
  final Set<Marker> _markers = {};
  static LatLng _lastMapPosition = _initialPosition;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  void _getUserLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemark = await Geolocator()
        .placemarkFromCoordinates(position.latitude, position.longitude);
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
      _markers.add(Marker(
          markerId: MarkerId(_initialPosition.toString()),
          position: _initialPosition,
          infoWindow: InfoWindow(
              title: "my location", snippet: "This is a snippet", onTap: () {}),
          onTap: () {},
          icon: BitmapDescriptor.defaultMarker));

      print('${placemark[0].name}');
    });
  }

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  // _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //         markerId: MarkerId(_lastMapPosition.toString()),
  //         position: _lastMapPosition,
  //         infoWindow: InfoWindow(
  //             title: "my location", snippet: "This is a snippet", onTap: () {}),
  //         onTap: () {},
  //         icon: BitmapDescriptor.defaultMarker));
  //   });
  // }

  Widget mapButton(Function function, Icon icon, Color color) {
    return RawMaterialButton(
      onPressed: function,
      child: icon,
      shape: new CircleBorder(),
      elevation: 2.0,
      fillColor: color,
      padding: const EdgeInsets.all(7.0),
    );
  }

// For controlling the view of the Map
  GoogleMapController mapController;

  Future<List<SearchClass>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return SearchClass(
        "$search $index",
        "$search $index",
      );
    });
  }

  requestPermissions() async {
    List<PermissionName> permissionNames = [];
    if (a0) permissionNames.add(PermissionName.Location);

    message = '';
    var permissions = await Permission.requestPermissions(permissionNames);
    permissions.forEach((permission) {
      message +=
          '${permission.permissionName}: ${permission.permissionStatus}\n';
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    setState(() => this.context = context);
    // Determining the screen width & height
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: height,
        width: width,
        child: Stack(children: <Widget>[
          Positioned(
            child: Container(
                height: 140.0,
                decoration: new BoxDecoration(
                  color: new Color(0xff1F1E4F),
                  boxShadow: [new BoxShadow(blurRadius: 5.0)],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 40.0)),
                ),

                //TRY TO CHANGE THIS **0.30** value to achieve your goal
                child: Container(
                  margin: EdgeInsets.fromLTRB(60.0, 40.0, 70.0, 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/img/logo.png',
                          scale: 1.5,
                          width: 350,
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                          width: 5,
                        ),
                      ]),
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 130),
              child: Scaffold(
                body: _initialPosition == null
                    ? Container(
                        child: Center(
                          child: Text(
                            'loading map..',
                            style: TextStyle(
                                fontFamily: 'Avenir-Medium',
                                color: Colors.grey[400]),
                          ),
                        ),
                      )
                    : Container(
                        child: Stack(children: <Widget>[
                          GoogleMap(
                            markers: _markers,
                            mapType: _currentMapType,
                            initialCameraPosition: CameraPosition(
                              target: _initialPosition,
                              zoom: 14.4746,
                            ),
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            zoomGesturesEnabled: true,
                            onCameraMove: _onCameraMove,
                            myLocationEnabled: true,
                            compassEnabled: true,
                            myLocationButtonEnabled: false,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                                child: Column(
                                  children: <Widget>[
                                    // mapButton(_onAddMarkerButtonPressed,
                                    //     Icon(
                                    //         Icons.add_location
                                    //     ), Colors.blue),
                                    mapButton(
                                        _onMapTypeButtonPressed,
                                        Icon(
                                          IconData(0xf473,
                                              fontFamily:
                                                  CupertinoIcons.iconFont,
                                              fontPackage: CupertinoIcons
                                                  .iconFontPackage),
                                        ),
                                        Colors.green),
                                  ],
                                )),
                          )
                        ]),
                      ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 100, right: 20, left: 20),
            child: SearchBar<SearchClass>(
              searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
              headerPadding: EdgeInsets.symmetric(horizontal: 10),
              listPadding: EdgeInsets.symmetric(horizontal: 10),
              cancellationText: Text(
                "Cancel",
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Avenir-Medium',
                    color: Colors.black),
              ),
              hintText: "Search ",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              loader: Center(child: MyIconSpinner("load")),
              placeHolder: Center(
                  // child: Text("Placeholder"),
                  ),
              onError: (error) {
                return Center(
                  child: Icon(
                    Icons.error,
                    size: 100,
                    color: new Color(0xff1F1E4F),
                  ),
                );
              },
              emptyWidget: Center(
                child: Icon(
                  Icons.error_outline,
                  size: 100,
                  color: new Color(0xff1F1E4F),
                ),
              ),
              searchBarStyle: SearchBarStyle(
                backgroundColor: Colors.grey[50],
                borderRadius: BorderRadius.circular(20),
              ),
              onSearch: search,
              onItemFound: (SearchClass post, int index) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Card(
                          elevation: 5,
                          color: new Color(0xffE8E8ED),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                              height: 100,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ListTile(
                                        leading: Image.asset(
                                          "assets/img/user.png",
                                          width: 70,
                                          height: 70,
                                        ),
                                        title: Text(post.title),
                                        subtitle: Text(post.description),
                                        trailing: Card(
                                            elevation: 1,
                                            color: new Color(0xffCECECE),
                                            margin: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 0.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                                width: 70,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          Text(
                                                            " class",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff1F1E4F),
                                                                fontSize: 12.0),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2.0),
                                                            child: Text(
                                                              "4 \$",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff007EE7),
                                                                  fontSize:
                                                                      15.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2.0),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      size:
                                                                          12.0,
                                                                      color: new Color(
                                                                          0xff55CE9D),
                                                                    ),
                                                                    Text(
                                                                      "4",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              10.0),
                                                                    )
                                                                  ])),
                                                        ],
                                                      ),
                                                    ]))))
                                  ])))
                    ]);
              },
            ),
          ),
        ]));
  }
}
