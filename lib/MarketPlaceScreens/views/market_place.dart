import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/MarketPlaceScreens/controller/market_place.dart';
import 'package:ostello/MarketPlaceScreens/views/market_card.dart';

class MarketplaceScreen extends ConsumerWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketplaceData = ref.watch(marketplaceProvider);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.purple),
                onPressed: () {
                  // Back action
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Radiology',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () {
                  // Favorite action
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  "assets/images/share-vector.png",
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
              ),
              // IconButton(
              //   icon: const Icon(Icons.share, color: Colors.purple),
              //   onPressed: () {
              //     // Share action
              //   },
              // ),
              // CircleAvatar(
              //   backgroundColor: Colors.purple.withOpacity(0.2),
              //   child: const Icon(Icons.android, color: Colors.purple),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  "assets/images/profile.png",
                  height: 27,
                  width: 27,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Marketplace'),
              Tab(text: 'News'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(child: Text('Overview')),
            marketplaceData.when(
              data: (data) {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        MarketplaceCard(
                            coachingCenter: data[index % data.length]),
                        const Divider(),
                      ],
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            const Center(child: Text('News')),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.green.withOpacity(0.2),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // To avoid taking up extra vertical space
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center align horizontally
            children: [
              const Text(
                'Getting guidance has now become easy ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8), // Space between the texts
              const Text(
                '12+ coaching centers nearby',
                style: TextStyle(color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
