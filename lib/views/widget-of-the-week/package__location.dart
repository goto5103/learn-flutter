import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetPackage__location extends StatefulWidget {
  @override
  _WidgetPackage__locationState createState() =>
      _WidgetPackage__locationState();
}

class _WidgetPackage__locationState extends State<WidgetPackage__location> {
  final Location location = new Location();
  serviceGranted() async {
    var enabled = await location.serviceEnabled();
    if (!enabled) {
      enabled = await location.requestService();
      if (!enabled) {
        return;
      }
    }
  }

  permissionGranted() async {
    var permssionGranted = await location.hasPermission();
    if (permssionGranted == PermissionStatus.denied) {
      permssionGranted = await location.requestPermission();
      if (permssionGranted == PermissionStatus.denied) {
        return;
      }
    }
  }

  Future getLocation() async {
    return await location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    serviceGranted();
    permissionGranted();
    return Scaffold(
      appBar: AppBar(
        title: Text("Package__location"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              explanationText("位置情報の取得ができる（権限の許可と位置情報サービスの有効化が必要）"),
              FutureBuilder(
                future: getLocation(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text("${snapshot.data}");
                  }
                  return LinearProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
