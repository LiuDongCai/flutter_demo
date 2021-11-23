import 'package:flutter/material.dart';
import 'package:flutterapp/count/count_num_demo.dart';
import 'package:flutterapp/map/animate_camera.dart';
import 'package:flutterapp/map/lit_mode.dart';
import 'package:flutterapp/map/map_click.dart';
import 'package:flutterapp/map/map_coordinates.dart';
import 'package:flutterapp/map/map_ui.dart';
import 'package:flutterapp/map/marker_icons.dart';
import 'package:flutterapp/map/move_camera.dart';
import 'package:flutterapp/map/padding.dart';
import 'package:flutterapp/map/page.dart';
import 'package:flutterapp/map/place_circle.dart';
import 'package:flutterapp/map/place_marker.dart';
import 'package:flutterapp/map/place_polygon.dart';
import 'package:flutterapp/map/place_polyline.dart';
import 'package:flutterapp/map/scrolling_map.dart';
import 'package:flutterapp/map/snapshot.dart';
import 'package:flutterapp/map/tile_overlay.dart';
import 'package:flutterapp/widget/image/image_demo.dart';
import 'package:flutterapp/widget/progress/progress_demo.dart';
import 'package:flutterapp/widget/switch/switch_demo.dart';
import 'file:///D:/flutter/flutter_app/lib/widget/form/form_demo.dart';
import 'file:///D:/flutter/flutter_app/lib/widget/button/button_demo.dart';
import 'package:flutterapp/widget/text/text_demo.dart';

///组件demo
class MapTestRoute extends StatelessWidget{

  final List<GoogleMapExampleAppPage> _allPages = <GoogleMapExampleAppPage>[
    MapUiPage(),
    MapCoordinatesPage(),
    MapClickPage(),
    AnimateCameraPage(),
    MoveCameraPage(),
    PlaceMarkerPage(),
    MarkerIconsPage(),
    ScrollingMapPage(),
    PlacePolylinePage(),
    PlacePolygonPage(),
    PlaceCirclePage(),
    PaddingPage(),
    SnapshotPage(),
    LiteModePage(),
    TileOverlayPage(),
  ];

  void _pushPage(BuildContext context, GoogleMapExampleAppPage page) {
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          appBar: AppBar(title: Text(page.title)),
          body: page,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Map Demos")),
      body: ListView.builder(
        itemCount: _allPages.length,
          itemBuilder: (_, int index) =>ListTile(
            leading: _allPages[index].leading,
            title: Text(_allPages[index].title),
            onTap: () => _pushPage(context, _allPages[index]),
          )
      ),
    );
  }

}