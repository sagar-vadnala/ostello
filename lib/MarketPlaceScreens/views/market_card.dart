
// import 'package:flutter/material.dart';
// import 'package:ostello/MarketPlaceScreens/model/market_place.dart';

// class MarketplaceCard extends StatelessWidget {
//   final CoachingCenter coachingCenter;

//   const MarketplaceCard({super.key, required this.coachingCenter});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(8.0),
//                   child: Image.asset(
//                     coachingCenter.imageUrl,
//                     width: 132,
//                     height: 146,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 8,
//                   left: 8,
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 20,
//                         width: 65,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 4),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Verified', style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w800)),
//                               Icon(Icons.verified, color: Colors.green, size: 16),
                          
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   left: 8,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         '50% off',
//                         style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w900),
//                       ),
//                       Text(
//                         'UPTO ${coachingCenter.price}',
//                         style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w800),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Icon(Icons.favorite_border, color: Colors.white),
//                 ),
//               ],
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     coachingCenter.name,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     children: [
//                       Icon(Icons.stars, color: Colors.green, size: 18),
//                       SizedBox(width: 5),
//                       Text('${coachingCenter.rating} (100+ Rating)', style: TextStyle(color: Colors.black, fontSize: 14)),
//                     ],
//                   ),
//                   SizedBox(height: 5,),
//                   Text(coachingCenter.subjects, style: TextStyle(fontSize: 14)),
//                   SizedBox(height: 3,),
//                   Text(coachingCenter.location, style: TextStyle(fontSize: 14)),
//                   SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text('View Details'),
//                     style: ElevatedButton.styleFrom(
//                       elevation: 0.5,
//                       foregroundColor: Color(0xFF7D23E0), backgroundColor: Color(0xFFF4F3F4),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:ostello/MarketPlaceScreens/model/market_place.dart';

class MarketplaceCard extends StatelessWidget {
  final CoachingCenter coachingCenter;

  const MarketplaceCard({super.key, required this.coachingCenter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  coachingCenter.imageUrl,
                  width: 132,
                  height: 146,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Verified', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800)),
                            Icon(Icons.verified, color: Colors.green, size: 16),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coachingCenter.offer,
                      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'UPTO ${coachingCenter.price}',
                      style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 8,
                right: 8,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coachingCenter.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(Icons.stars, color: Colors.green, size: 18),
                    const SizedBox(width: 5),
                    Text('${coachingCenter.rating} (100+ Rating)', style: const TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 5),
                Text(coachingCenter.subjects, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 3),
                Text(coachingCenter.location, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('View Details'),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    foregroundColor: const Color(0xFF7D23E0),
                    backgroundColor: const Color(0xFFF4F3F4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
