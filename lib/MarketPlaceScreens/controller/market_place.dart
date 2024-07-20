import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/MarketPlaceScreens/model/market_place.dart';
// import '../models/coaching_center.dart';

final marketplaceProvider = FutureProvider<List<CoachingCenter>>((ref) async {
  // Simulate fetching data from an API or database
  await Future.delayed(Duration(seconds: 2));
  return [
    CoachingCenter(
      name: 'Shiska Coaching Center',
      rating: 4.5,
      subjects: 'All Subjects • Com • Sci',
      location: 'Kalkaji • 3 kms away',
      offer: '50% off',
      price: '₹1000',
      imageUrl: 'assets/images/image1.png', // Replace with your image asset
    ),
    // Add more centers as needed
  ];
});
