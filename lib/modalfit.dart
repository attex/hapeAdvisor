import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hape_advisor/heroimage.dart';

import 'data.dart';

class ModalFit extends StatelessWidget {
  ModalFit(this.id, {Key? key}) : super(key: key);

  int id;
  @override
  Widget build(BuildContext context) {
    DataPoint data = dataTable.firstWhere((element) => element.id == id);
    return Material(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22),
          topLeft: Radius.circular(22),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Text(
                  data.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data.address,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                data.images.isNotEmpty
                    ? Container(
                        height: 160,
                        child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: data.images
                                    .map((e) => Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, right: 5),
                                        child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HeroPhotoViewRouteWrapper(
                                                          imageProvider:
                                                              AssetImage(
                                                            "assets/images/" +
                                                                e,
                                                          ),
                                                        )),
                                              );
                                            },
                                            child: Container(
                                                child: Hero(
                                                    tag: "someTag",
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          "assets/images/" + e,
                                                        )))))))
                                    .toList())))
                    : Container(
                        height: 60,
                        child: Center(
                            child: Text("No images available",
                                style: TextStyle(color: Colors.grey))),
                      ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(data.description, style: TextStyle(fontSize: 12)),
                SizedBox(
                  height: 10,
                ),
                data.tips != ""
                    ? Text(
                        "Hape-Tip",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    : Container(),
                data.tips != ""
                    ? SizedBox(
                        height: 10,
                      )
                    : Container(),
                data.tips != ""
                    ? Text(data.tips, style: TextStyle(fontSize: 12))
                    : Container(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
