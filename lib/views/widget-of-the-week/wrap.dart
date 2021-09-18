import 'package:flutter/material.dart';

class WidgetWrap extends StatefulWidget {
  @override
  _WidgetWrapState createState() => _WidgetWrapState();
}

class _WidgetWrapState extends State<WidgetWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wrap"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrapなし（Row）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap置き換え（Row）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrapなし（Column）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap置き換え（Column）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（WrapAlignment.end）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（WrapAlignment.center）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（WrapAlignment.spaceEvenly）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（WrapAlignment.spaceBetween）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（WrapAlignment.spaceAround）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（spacing指定）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 20.0,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: double.infinity,
                    child: Text(
                      "Wrap（runSpacing指定）",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Wrap(
                      direction: Axis.vertical,
                      runSpacing: 20.0,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
