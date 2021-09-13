import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hotel {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Hotel(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Hotel> hotelLocation = [
  Hotel(
      shopName: 'San Carlos Hotel',
      address: '28 Liberty St 60th floor, New York',
      description:
          'Just off busy 3rd Avenue in office-packed East Midtown, this updated 1920s tower',
      locationCoords: LatLng(40.7078523, -74.008981),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNEXNapiXl8nIQ6GnNlGfgVP_duEJhQ32hVYprC=w408-h272-k-no'
      ),
  Hotel(
      shopName: 'Cambria Hotel New York',
      address: '255 Vesey St, New York',
      description:
          'This contemporary, brick-and-glass hotel set in the Chelsea Flower District is a 3-minute walk from the 28th St.',
      locationCoords: LatLng(40.7146227, -74.0153539),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipO9BS6U0-Ru_LT9AMhX8WUe_avNNwgQKjjCGvtc=w426-h240-k-no'
      ),
  Hotel(
      shopName: 'Broadway International Hotel',
      address: '77 Worth St, New York',
      description:
          'Luxe, intimate spot for inventive, multicourse New American tasting menus & cocktails.',
      locationCoords: LatLng(40.7168996, -74.0055585),
      thumbNail: 'https://lh3.googleusercontent.com/proxy/jgYT-UYhDuNoilVjOP_WA-K-0CEypgf0wpBvd-fjI_sA-hJozwPu_z-upgeR3s_re7r8zgOdD3vQO2D1IVVTJPjaEaZmzGny1RtgTPrPdgQu3PwdqXUihb_tFrK_hlJ9GwlCeSddpZOXeEO3u9msWTq5h-JHvg=w408-h272-k-no'
      ),
  Hotel(
      shopName: 'Radisson Hotel New York',
      address: '205 E Houston St, New York',
      description:
          'No-frills deli with theatrically cranky service serving mile-high sandwiches since 1888.',
      locationCoords: LatLng(40.7222339, -73.9874268),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPU9Fm4thZgcN59tU0R5ts9-2Qpqx5-SYRjkye4=w408-h272-k-no'
      ),
  Hotel(
      shopName: 'Estela Restaurant',
      address: '47 E Houston St 1st floor',
      description:
          'Small plates made with market ingredients & Mediterranean twists served in an unfussy cafe space.',
      locationCoords: LatLng(40.7246407, -73.9947438),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPIDMNHBYYtQ7aYVB7-kFVvTKbbUHC4dsFpth2U=w408-h612-k-no'
      ),
  Hotel(
      shopName: 'Eleven Madison Hotel',
      address: '11 Madison Ave',
      description:
          'Upscale American tasting menus from chef Daniel Humm served in a high-ceilinged art deco space.',
      locationCoords: LatLng(40.7416158, -73.9872336),
      thumbNail: 'https://lh4.googleusercontent.com/proxy/Lf6T7-IduvUbx3d6D6OvHi32R82V-QLrNNftY1Gz_w6rXs2wClezJObFh7DMrTvf7oKZsEi60WXBYvQchrMZ-_ux4Qb2jkJrSh0zrvNOrgrFULGXVoNlsVAgSpYKGTnqQWrHk_CYmRymuK9EeFpqL3n4cMj8ewc=w408-h408-k-no'
      ), 
  Hotel(
      shopName: 'West Side YMCA Hotel',
      address: '200 5th Ave, New York',
      description:
          'Branch of the famed Italian market, offering counters, restaurants & cooking demos',
      locationCoords: LatLng(40.7420304, -73.9899802),
      thumbNail: 'https://lh3.googleusercontent.com/proxy/RhUk-ii6dChuVSilMof6FXlt2GnvE_3sPYMMGTkIntMFAIavwIFhohs4rR-GAtlUCCCyfXYVaCWbout0e9OQFRSMKmcTJlq-ZqCjPCb5q47HFdCTfez8vJ2BRGtL41cDVXz5QF2oGixau-c0MELW6DAvLhrrzg=w437-h240-k-no'
      ),
  Hotel(
      shopName: 'Doxie Hotel',
      address: '1170 Broadway, New York',
      description:
          'Sophisticated, multi-room venue for refined, French-inspired modern cuisine, cocktails & wine.',
      locationCoords: LatLng(40.7448916, -73.9886177),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOrSgcJBM1o257w2-zsf09nnZSoZvKoi54skBTu=w408-h271-k-no'
      ),
  Hotel(
      shopName: 'Hotel Wolcott',
      address: '261 Madison Ave, New York',
      description:
          'Set in a beaux arts-style building, this genteel, long-standing hotel is a 5-minute walk from the nearest subway station.',
      locationCoords: LatLng(40.7503943, -73.9808929),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipN1IQP3LhhdQnIAqUrXbCjsZgRPxG0q0I7nX7_1=w408-h621-k-no'
      ),
  Hotel(
      shopName: 'Radio City Apartments',
      address: '1501 Broadway, New York',
      description:
          'Rock ’n’ roll-themed chain with a high-energy vibe serving burgers & American classics.',
      locationCoords: LatLng(40.7570344, -73.9866114),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMLTsyK87HiW1SssG3Lnhs6TioSXqsscs4IlbGN=w408-h271-k-no'
      ),
  Hotel(
      shopName: 'Holiday Inn Manhattan',
      address: '99 E 52nd St, New York',
      description:
          'Steakhouse in an iconic Seagram Building setting with midcentury style, classic dishes & cocktails.',
      locationCoords: LatLng(40.7583184, -73.9718699),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPXPNN6jYrNrgQT0ewBjzBI1btR3ZwfJZtRhIOi=w408-h271-k-no'
      ),
  Hotel(
      shopName: 'San Carlos Hotel',
      address: '28 Liberty St 60th floor, New York',
      description:
          'Daniel Boulud elegant French flagship where jackets are required & expense accounts come in handy.',
      locationCoords: LatLng(40.7667697, -73.9675891),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNEXNapiXl8nIQ6GnNlGfgVP_duEJhQ32hVYprC=w408-h272-k-no'
      ),
  Hotel(
      shopName: 'Cambria Hotel New York',
      address: '255 Vesey St, New York',
      description:
          'Chef Thomas Keller New American restaurant offers luxe fixed-price menus, with Central Park views.',
      locationCoords: LatLng(40.7682405, -73.9828992),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipO9BS6U0-Ru_LT9AMhX8WUe_avNNwgQKjjCGvtc=w426-h240-k-no'
        ),
];