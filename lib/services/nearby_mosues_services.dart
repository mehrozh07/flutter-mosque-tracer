import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://maps.googleapis.com/maps/api/place/nearbysearch/json";

  static Future<List<Place>> fetchNearbyMosques(double lat, double lng) async {
    const apiKey = "AIzaSyBh81Effvbf2axSQGO8LSOdsxe8IO1q9pI";
    const radius = 1000;
    const sensor = true;
    final response = await http.get(
        Uri.parse('$baseUrl?location=$lat,$lng&radius=$radius&sensor=$sensor&types=mosque&key=$apiKey')
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == "OK") {
        final results = data['results'] as List;
        return results.map((place) => Place.fromJson(place)).toList();
      }
    }
    return [];
  }
}

class Place {
  final String name;
  final double lat;
  final double lng;

  Place({required this.name, required this.lat, required this.lng});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      name: json['name'],
      lat: json['geometry']['location']['lat'],
      lng: json['geometry']['location']['lng'],
    );
  }
}
