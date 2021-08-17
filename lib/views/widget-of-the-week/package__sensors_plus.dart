import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';
import 'package:sensors_plus/sensors_plus.dart';


class WidgetPackage__sensors_plus extends StatefulWidget {
  @override
  _WidgetPackage__sensors_plusState createState() =>
      _WidgetPackage__sensors_plusState();
}

class _WidgetPackage__sensors_plusState
    extends State<WidgetPackage__sensors_plus> {

  List<double> _accelerometerValues;
  List<double> _userAccelerometerValues;
  List<double> _gyroscopeValues;
  final _streamSubscriptions = <StreamSubscription<dynamic>>[];
  @override
  void initState() {
    super.initState();
    _streamSubscriptions.add(
      accelerometerEvents.listen(
        (AccelerometerEvent event) {
          setState(() {
            _accelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      gyroscopeEvents.listen(
        (GyroscopeEvent event) {
          setState(() {
            _gyroscopeValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      userAccelerometerEvents.listen(
        (UserAccelerometerEvent event) {
          setState(() {
            _userAccelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (final subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    final accelerometer =
        _accelerometerValues.map((double v) => v.toStringAsFixed(1)).toList();
    final gyroscope =
        _gyroscopeValues.map((double v) => v.toStringAsFixed(1)).toList();
    final userAccelerometer = _userAccelerometerValues
        .map((double v) => v.toStringAsFixed(1))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Package__sensors_plus"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          explanationText("ジャイロセンサー、加速度センサーから値を受け取ることができる"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Accelerometer: $accelerometer'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('UserAccelerometer: $userAccelerometer'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Gyroscope: $gyroscope'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
