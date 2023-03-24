import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'tourism_place.dart';

class detail extends StatelessWidget {
  final TourismPlace place;
  const detail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(place.name),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: place.imageUrls.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      place.imageUrls[index],
                    );
                  }),
            ),
            Text(place.openDays),
            Text(place.openTime),
            Text(place.description),
            ElevatedButton(onPressed: (){
              _launchUrl ('https://spada.upnyk.ac.id/my/');
            },
                child: Text("Spada"))
          ],
        ));
  }
  Future<void> _launchUrl(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl (_url)){
      throw Exception('Could Not Launch $_url');
    }
  }
}

