import 'package:flutter/material.dart';
import 'detail.dart';
import 'tourism_place.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tourism Place"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: tourismPlaceList.length,
            itemBuilder: (context, index) {
              final TourismPlace place = tourismPlaceList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => detail(
                                place: place,
                              )
                      )
                  );
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Image.network(place.imageUrls[0]),
                      ),
                      Text(place.name)
                    ],
                  ),
                ),
              );
            }
            )
    );
  }
}
