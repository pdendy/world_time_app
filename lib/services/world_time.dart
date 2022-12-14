import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; //location name for the UI
  String time = ''; //time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

    try {
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //print(data);

      //get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      //print(dateTime);
      print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      time = now.toString();
    }
    catch (e) {
      print('caught error: $e');
    }
  }
}

