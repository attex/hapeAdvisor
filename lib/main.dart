import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hape_advisor/data.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:latlong2/latlong.dart';

import 'modalfit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: MyColor.green, // status bar color
  ));
  return runApp(MapsApp());
}

/// This widget will be the root of application.
class MapsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Maps Demo',
      home: MyHomePage(),
    );
  }
}

class MyColor {
  static Color green = Color(0xff14988b);
  static Color grey = Color(0xff444444);
}

enum EventType { restaurant, sights, activity, place, other }

/// This widget is the home page of the application.
class MyHomePage extends StatefulWidget {
  /// Initialize the instance of the [MyHomePage] class.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  List<bool> filterselected = [true, true, true, true, true];
  List<String> filtertext = [
    "Restaurants",
    "Places",
    "Sights",
    "Activities",
    "Other"
  ];

  List<Marker> _markerList = [];
  List<DataPoint> _dataList = [];

  bool _searchInArea = false;

  bool _moving = true;

  int _selectedMarker = -1;

  MapController _controller = MapController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _markerList = _generateMarker();
    _dataList = generateSortedEntries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey,
            body: Stack(children: <Widget>[
              Positioned(
                top: 0,
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: FlutterMap(
                  mapController: _controller,
                  options: MapOptions(
                    onPositionChanged: (pos, m) {
                      if (!_moving) {
                        setState(() {
                          _moving = true;
                        });
                      }
                    },
                    center: LatLng(54.00, -2.00),
                    zoom: 6.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                    ),
                    MarkerLayerOptions(markers: _markerList),
                  ],
                )),
              ),
              Positioned(
                  bottom: 0,
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Hape Advisor",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: MyColor.grey),
                                  ),
                                  TextButton(
                                    child: Text(
                                      "Search in this area",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: _moving
                                              ? MyColor.green
                                              : MyColor.grey.withOpacity(0.5)),
                                    ),
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        primary: MyColor.green,
                                        backgroundColor: Colors.transparent,
                                        onSurface: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0))),
                                    onPressed: () {
                                      if (_moving) {
                                        setState(() {
                                          _searchInArea = true;
                                          _moving = false;
                                          _selectedMarker = -1;
                                          _markerList = _generateMarker();
                                          _dataList = generateSortedEntries();
                                          // get bounds and search in this area
                                        });
                                      }
                                    },
                                  )
                                ])),
                        SizedBox(height: 10),
                        filter(),
                        Expanded(child: _generateDataList())
                      ],
                    ),
                  )),
              Positioned(
                  top: 10,
                  left: 10,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: getDropdown()))
            ])));
  }

  List<Marker> _generateMarker() {
    List<DataPoint> sortedList = generateSortedEntries();

    return sortedList
        .map(
          (e) => Marker(
            anchorPos: AnchorPos.exactly(Anchor(10, 0)),
            width: e.id == _selectedMarker ? 30.0 : 20.0,
            height: e.id == _selectedMarker ? 30.0 : 20.0,
            point: LatLng(e.lat, e.lng),
            builder: (ctx) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedMarker = e.id;
                });
                _scrollController.jumpTo(0);
                showMaterialModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(e.id),
                );
              },
              child: e.id == _selectedMarker
                  ? Image.asset("assets/images/marker_selected.png")
                  : Image.asset("assets/images/marker.png"),
            ),
          ),
        )
        .toList();
  }

  List<DataPoint> generateSortedEntries() {
    List<DataPoint> list = dataTable.where((element) {
      // check if area-search is active
      if (_searchInArea) {
        // check if elemen is in map
        if (!(element.lat > _controller.bounds!.southWest!.latitude &&
            element.lng > _controller.bounds!.southWest!.longitude &&
            element.lat < _controller.bounds!.northEast!.latitude &&
            element.lng < _controller.bounds!.northEast!.longitude)) {
          return false;
        }
      }
      if (filterselected[0] && element.type == EventType.restaurant) {
        return true;
      } else if (filterselected[1] && element.type == EventType.place) {
        return true;
      } else if (filterselected[2] && element.type == EventType.sights) {
        return true;
      } else if (filterselected[3] && element.type == EventType.activity) {
        return true;
      } else if (filterselected[4] && element.type == EventType.other) {
        return true;
      } else {
        return false;
      }
    }).toList();

    list.sort((a, b) {
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });
    return list;
  }

  List<Widget> generateDataEntryList(List<DataPoint> list) {
    return list.map((e) => dataEntry(e.id)).toList();
  }

  Widget _generateDataList() {
    List<Widget> entries = generateDataEntryList(_dataList);
    return SingleChildScrollView(
      controller: _scrollController,
      physics: BouncingScrollPhysics(),
      child: Column(children: entries),
    );
  }

  Widget dataEntry(int id) {
    DataPoint data = dataTable.firstWhere((element) => element.id == id);
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedMarker = id;
            _controller.move(LatLng(data.lat, data.lng), 5);
          });
          showMaterialModalBottomSheet(
            expand: false,
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => ModalFit(id),
          );
        },
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: _selectedMarker == id ? Color(0xffd0eae8) : Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.withOpacity(0.5)))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                getIcon(getIdFromType(data.type)),
                                size: 14,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                filtertext[getIdFromType(data.type)],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data.name,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: MyColor.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data.address,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: _selectedMarker == id
                          ? Colors.white
                          : Color(0xffefefef),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedMarker = id;
                            _controller.move(LatLng(data.lat, data.lng), 5);
                          });
                        },
                        icon: Icon(
                          Icons.map_outlined,
                          color: MyColor.green,
                        ),
                      ))
                ])));
  }

  int getIdFromType(type) {
    if (type == EventType.restaurant) {
      return 0;
    } else if (type == EventType.place) {
      return 1;
    } else if (type == EventType.sights) {
      return 2;
    } else if (type == EventType.activity) {
      return 3;
    } else if (type == EventType.other) {
      return 4;
    } else {
      return 4;
    }
  }

  IconData getIcon(int id) {
    if (id == 0) {
      return Icons.local_restaurant;
    } else if (id == 1) {
      return Icons.location_on_outlined;
    } else if (id == 2) {
      return Icons.business_center_outlined;
    } else if (id == 3) {
      return Icons.attractions;
    } else if (id == 4) {
      return Icons.assistant_photo_outlined;
    } else {
      return Icons.assistant_photo_outlined;
    }
  }

  Widget mapButton() {
    return TextButton(
      child: Row(
        children: [
          Icon(
            Icons.cancel_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Map",
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.only(left: 10, right: 10),
          primary: MyColor.green,
          backgroundColor: MyColor.green,
          onSurface: Colors.grey,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: MyColor.green),
              borderRadius: BorderRadius.circular(20.0))),
      onPressed: () {
        setState(() {
          _searchInArea = false;
          _moving = true;
          _selectedMarker = -1;
          _markerList = _generateMarker();
          _dataList = generateSortedEntries();
        });
      },
    );
  }

  Widget toogleButton(int index) {
    return TextButton(
      child: Text(
        filtertext[index],
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.only(left: 20, right: 20),
          primary: filterselected[index] ? Colors.white : MyColor.green,
          backgroundColor:
              filterselected[index] ? MyColor.green : Colors.transparent,
          onSurface: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
      onPressed: () {
        setState(() {
          filterselected[index] = !filterselected[index];
        });
      },
    );
  }

  Widget filter() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _searchInArea ? mapButton() : Container(),
          _searchInArea
              ? SizedBox(
                  width: 10,
                )
              : Container(),
          toogleButton(0),
          SizedBox(
            width: 10,
          ),
          toogleButton(1),
          SizedBox(
            width: 10,
          ),
          toogleButton(2),
          SizedBox(
            width: 10,
          ),
          toogleButton(3),
          SizedBox(
            width: 10,
          ),
          toogleButton(4),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget getDropdown() {
    return DropdownSearch<String>(
      mode: Mode.MENU,
      showSearchBox: true,
      dropdownSearchDecoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40)),
      ), 
      
      popupShape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      popupItemBuilder: (context, String x, bool? selected) {
        return Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 5),
            child: Text(x));
      },
      items: countries.map((e) => e.name).toList(),
      onChanged: (i) {
        Country country = countries.firstWhere((element) => element.name == i);
        LatLng ltlng = LatLng(country.lat, country.lng);
        _controller.move(ltlng, 4);
      },
      selectedItem: "United Kingdom",
      popupBackgroundColor: Colors.white,
    );
  }
}

class Country {
  String name;
  double lat;
  double lng;
  Country(this.name, this.lat, this.lng);
}

List<Country> countries = [
  Country("Afghanistan", 33.00, 65.00),
  Country("Akrotiri", 34.37, 32.58),
  Country("Albania", 41.00, 20.00),
  Country("Algeria", 28.00, 3.00),
  Country("American Samoa", -14.20, -170.00),
  Country("Andorra", 42.30, 1.30),
  Country("Angola", -12.30, -18.30),
  Country("Anguilla", 18.15, -63.10),
  Country("Antarctica", -90.00, -0.00),
  Country("Argentina", -34.00, -64.00),
  Country("Armenia", 40.00, 45.00),
  Country("Aruba", 12.30, -69.58),
  Country("Atlantic.Ocean", 0.00, -25.00),
  Country("Australia", 27.00, -133.00),
  Country("Austria", 47.20, 13.20),
  Country("Azerbaijan", 40.30, 47.30),
  Country("Bahrain", 26.00, 50.33),
  Country("Baker.Island", 0.13, -176.28),
  Country("Bangladesh", 24.00, 90.00),
  Country("Barbados", 13.10, -59.32),
  Country("Belarus", 53.00, 28.00),
  Country("Belgium", 50.50, 4.00),
  Country("Belize", 17.15, -88.45),
  Country("Benin", 9.30, 2.15),
  Country("Bermuda", 32.20, -64.45),
  Country("Bhutan", 27.30, 90.30),
  Country("Bolivia", 17.00, -65.00),
  Country("Bosnia and Herzegovina", 44.00, 18.00),
  Country("Botswana", 22.00, -24.00),
  Country("Brazil", 10.00, -55.00),
  Country("Brunei", 4.30, 114.40),
  Country("Bulgaria", 43.00, 25.00),
  Country("Burkina.Faso", 13.00, -2.00),
  Country("Burma", 22.00, 98.00),
  Country("Burundi", 3.30, -30.00),
  Country("Cambodia", 13.00, 105.00),
  Country("Cameroon", 6.00, 12.00),
  Country("Canada", 60.00, -95.00),
  Country("Cape Verde", 16.00, -24.00),
  Country("Cayman Islands", 19.30, -80.30),
  Country("Central African Republic", 7.00, 21.00),
  Country("Chad", 15.00, 19.00),
  Country("Chile", 30.00, -71.00),
  Country("China", 35.00, 105.00),
  Country("Colombia", 4.00, -72.00),
  Country("Comoros", 12.10, -44.15),
  Country("Congo", 1.00, -15.00),
  Country("Costa Rica", 10.00, -84.00),
  Country("Cote d'Ivoire", 8.00, -5.00),
  Country("Croatia", 45.10, 15.30),
  Country("Cuba", 21.30, -80.00),
  Country("Cyprus", 35.00, 33.00),
  Country("Czech Republic", 49.45, 15.30),
  Country("Denmark", 56.00, 10.00),
  Country("Dhekelia", 34.59, 33.45),
  Country("Djibouti", 11.30, 43.00),
  Country("Dominica", 15.25, -61.20),
  Country("Dominican Republic", 19.00, -70.40),
  Country("East Timor", 8.50, -125.55),
  Country("Ecuador", 2.00, -77.30),
  Country("Egypt", 27.00, 30.00),
  Country("El Salvador", 13.50, -88.55),
  Country("Equatorial Guinea", 2.00, 10.00),
  Country("Eritrea", 15.00, 39.00),
  Country("Estonia", 59.00, 26.00),
  Country("Ethiopia", 8.00, 38.00),
  Country("Faroe Islands", 62.00, -7.00),
  Country("Fiji", 18.00, -175.00),
  Country("Finland", 64.00, 26.00),
  Country("France", 46.00, 2.00),
  Country("French Guiana", 4.00, -53.00),
  Country("Guadeloupe", 16.15, -61.35),
  Country("Martinique", 14.40, -61.00),
  Country("Mayotte", -12.50, -45.10),
  Country("Reunion", -21.06, -55.36),
  Country("Gabon", -1.00, -11.45),
  Country("Gaza.Strip", 31.25, 34.20),
  Country("Georgia", 42.00, 43.30),
  Country("Germany", 51.00, 9.00),
  Country("Ghana", 8.00, -2.00),
  Country("Gibraltar", 36.08, -5.21),
  Country("Greece", 39.00, 22.00),
  Country("Greenland", 72.00, -40.00),
  Country("Grenada", 12.07, -61.40),
  Country("Guadeloupe", 16.15, -61.35),
  Country("Guam", 13.28, 144.47),
  Country("Guatemala", 15.30, -90.15),
  Country("Guernsey", 49.28, -2.35),
  Country("Guinea", 11.00, -10.00),
  Country("Guinea-Bissau", 12.00, -15.00),
  Country("Guyana", 5.00, -59.00),
  Country("Haiti", 19.00, -72.25),
  Country("Honduras", 15.00, -86.30),
  Country("Hong Kong", 22.15, 114.10),
  Country("Howland Island", 0.48, -176.38),
  Country("Hungary", 47.00, 20.00),
  Country("Iceland", 65.00, -18.00),
  Country("India", 20.00, 77.00),
  Country("Indonesia", -5.00, -120.00),
  Country("Iran", 32.00, 53.00),
  Country("Iraq", 33.00, 44.00),
  Country("Ireland", 53.00, -8.00),
  Country("Israel", 31.30, 34.45),
  Country("Italy", 42.50, 12.50),
  Country("Jamaica", 18.15, -77.30),
  Country("Japan", 36.00, 138.00),
  Country("Jersey", 49.15, -2.10),
  Country("Jordan", 31.00, 36.00),
  Country("Kazakhstan", 48.00, 68.00),
  Country("Kenya", 1.00, 38.00),
  Country("Kiribati", 1.25, 173.00),
  Country("Kosovo", 42.35, 21.00),
  Country("Kuwait", 29.30, 45.45),
  Country("Kyrgyzstan", 41.00, 75.00),
  Country("Laos", 18.00, 105.00),
  Country("Latvia", 57.00, 25.00),
  Country("Lebanon", 33.50, 35.50),
  Country("Lesotho", -29.30, -28.30),
  Country("Liberia", 6.30, -9.30),
  Country("Libya", 25.00, 17.00),
  Country("Liechtenstein", 47.16, 9.32),
  Country("Lithuania", 56.00, 24.00),
  Country("Luxembourg", 49.45, 6.10),
  Country("Macau", 22.10, 113.33),
  Country("Madagascar", -20.00, -47.00),
  Country("Malawi", -13.30, -34.00),
  Country("Malaysia", 2.30, 112.30),
  Country("Maldives", 3.1, 73.00),
  Country("Mali", 17.00, -4.00),
  Country("Malta", 35.50, 14.35),
  Country("Martinique", 14.40, -61.00),
  Country("Mauritania", 20.00, -12.00),
  Country("Mauritius", -20.17, -57.33),
  Country("Mayotte", -12.50, -45.10),
  Country("Mexico", 23.00, -102.00),
  Country("Moldova", 47.00, 29.00),
  Country("Monaco", 43.44, 7.24),
  Country("Mongolia", 46.00, 105.00),
  Country("Montenegro", 42.30, 19.18),
  Country("Montserrat", 16.45, -62.12),
  Country("Morocco", 32.00, -5.00),
  Country("Mozambique", -18.15, -35.00),
  Country("Namibia", -22.00, -17.00),
  Country("Nauru", -0.32, -166.55),
  Country("Nepal", 28.00, 84.00),
  Country("Netherlands", 52.30, 5.45),
  Country("New Caledonia", -21.30, -165.30),
  Country("New Zealand", -41.00, -174.00),
  Country("Nicaragua", 13.00, -85.00),
  Country("Niger", 16.00, 8.00),
  Country("Nigeria", 10.00, 8.00),
  Country("Niue", -19.02, -169.52),
  Country("North Korea", 40.00, 127.00),
  Country("Norway", 62.00, 10.00),
  Country("Oman", 21.0, 57.00),
  Country("Pakistan", 30.00, 70.00),
  Country("Palau", 7.30, 134.30),
  Country("Palmyra Atoll", 5.52, -162.04),
  Country("Panama", 9.00, -80.00),
  Country("Papua New Guinea", -6.00, -147.00),
  Country("Paracel Islands", 16.30, 112.00),
  Country("Paraguay", -23.00, -58.00),
  Country("Peru", -10.00, -76.00),
  Country("Philippines", 13.00, 122.00),
  Country("Poland", 52.00, 20.00),
  Country("Portugal", 39.30, -8.00),
  Country("Puerto.Rico", 18.15, -66.30),
  Country("Qatar", 25.30, 51.15),
  Country("Republic of Macedonia", 41.50, 22.00),
  Country("Reunion", -21.06, -55.36),
  Country("Romania", 46.00, 25.00),
  Country("Russia", 60.00, 100.00),
  Country("Rwanda", -2.00, -30.00),
  Country("Saint Helena", -15.57, -5.42),
  Country("Ascension Island", -7.57, -14.22),
  Country("Samoa", -13.35, -172.20),
  Country("San Marino", 43.46, 12.25),
  Country("Saudi Arabia", 25.00, 45.00),
  Country("Senegal", 14.00, -14.00),
  Country("Serbia", 44.00, 21.00),
  Country("Serbia and Montenegro", 44.00, 21.00),
  Country("Seychelles", -4.35, -55.40),
  Country("Sierra.Leone", 8.30, -11.30),
  Country("Singapore", 1.22, 103.48),
  Country("Slovakia", 48.40, 19.30),
  Country("Slovenia", 46.07, 14.49),
  Country("Solomon Islands", -8.00, -159.00),
  Country("Somalia", 10.00, 49.00),
  Country("South Africa", -29.00, -24.00),
  Country("South Korea", 37.00, 127.30),
  Country("South Sudan", 8.00, 30.00),
  Country("Spain", 40.00, -4.00),
  Country("Sri Lanka", 7.00, 81.00),
  Country("Sudan", 15.00, 30.00),
  Country("Suriname", 4.00, -56.00),
  Country("Svalbard", 78.00, 20.00),
  Country("Swaziland", -26.30, -31.30),
  Country("Sweden", 62.00, 15.00),
  Country("Switzerland", 47.00, 8.00),
  Country("Syria", 35.00, 38.00),
  Country("Taiwan", 23.30, 121.00),
  Country("Tajikistan", 39.00, 71.00),
  Country("Tanzania", -6.00, -35.00),
  Country("Thailand", 15.00, 100.00),
  Country("Bahamas", 24.15, -76.00),
  Country("Gambia", 13.28, -16.34),
  Country("Togo", 8.00, 1.10),
  Country("Tokelau", -9.00, -172.00),
  Country("Tonga", -20.00, -175.00),
  Country("Trinidad and Tobago", 11.00, -61.00),
  Country("Tromelin Island", -15.52, -54.25),
  Country("Tunisia", 34.00, 9.00),
  Country("Turkey", 39.00, 35.00),
  Country("Turkmenistan", 40.00, 60.00),
  Country("Tuvalu", -8.00, -178.00),
  Country("Uganda", 1.00, 32.00),
  Country("Ukraine", 49.00, 32.00),
  Country("United Arabmirates", 24.00, 54.00),
  Country("United Kingdom", 54.00, -2.00),
  Country("United States", 38.00, -97.00),
  Country("Uruguay", -33.00, -56.00),
  Country("Uzbekistan", 41.00, 64.00),
  Country("Vanuatu", -16.00, -167.00),
  Country("Venezuela", 8.00, -66.00),
  Country("Vietnam", 16.10, 107.50),
  Country("Virgin Islands", 18.20, -64.50),
  Country("Wake Island", 19.17, 166.39),
  Country("West Bank", 32.00, 35.15),
  Country("Western Sahara", 24.30, -13.00),
  Country("Yemen", 15.00, 48.00),
  Country("Zambia", -15.00, -30.00),
  Country("Zimbabwe", -20.00, -30.00)
];
