class Place {
  final String? description;
  final String? placeId;
  final String? main_text;

  Place({this.description, this.placeId, this.main_text});

  Place.fromJson(Map<String, dynamic> json)
      : this.description = json['description'],
        this.placeId = json['place_id'],
        this.main_text = json['structured_formatting']['main_text'];

  Map<String, dynamic> toMap() {
    return {
      'description': this.description,
      'placeId': this.placeId,
      'structured_formatting': this.main_text
    };
  }
}

class PlaceDetail {
  // error로 인해 ? 추가
  final String? placeId;
  final String? formattedAddress;
  final String? formattedPhoneNumber;
  final String? name;
  final double? rating;
  final String? vicinity;
  final String website;
  final double? lat;
  final double? lng;

  PlaceDetail({
    this.placeId,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.name,
    this.rating,
    this.vicinity,
    this.website = '',
    this.lat,
    this.lng,
  });

  PlaceDetail.fromJson(Map<String, dynamic> json)
      : this.placeId = json['place_id'],
        this.formattedAddress = json['formatted_address'],
        this.formattedPhoneNumber = json['formatted_phone_number'],
        this.name = json['name'],
        this.rating = json['rating'].toDouble(),
        this.vicinity = json['vicinity'],
        this.website = json['website'] ?? '',
        this.lat = json['geometry']['location']['lat'],
        this.lng = json['geometry']['location']['lng'];

  Map<String, dynamic> toMap() {
    return {
      'placeId': this.placeId,
      'formateedAddress': this.formattedAddress,
      'formateedPhoneNumber': this.formattedPhoneNumber,
      'name': this.name,
      'rating': this.rating,
      'vicinity': this.vicinity,
      'website': this.website,
      'lat': this.lat,
      'lng': this.lng,
    };
  }
}