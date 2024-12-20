import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fav_places_9_project/provider/places_provider.dart';

import 'package:fav_places_9_project/widgets/places_list.dart';
import 'package:fav_places_9_project/screens/add_place.dart';

class PlacesScreen extends ConsumerStatefulWidget {
  const PlacesScreen({super.key});
  @override
  ConsumerState<PlacesScreen> createState() {
    return _PlacesScreenState();
  }
}

class _PlacesScreenState extends ConsumerState<PlacesScreen> {
  late Future<void> _placesFuture;
  @override
  void initState() {
    super.initState();
    _placesFuture = ref.read(userPlacesProvider.notifier).loadPlaces();
  }

  @override
  Widget build(BuildContext context) {
    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          'Add',
          style: TextStyle(fontSize: 24),
        ),
        icon: const Icon(Icons.add, color: Colors.black, size: 28),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const AddPlaceScreen(),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: const Text(
          ' My Favorite Places',
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (ctx) => const AddPlaceScreen(),
        //         ),
        //       );
        //     },
        //     icon: const Icon(Icons.add_circle_rounded),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _placesFuture,
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : PlacesList(
                      places: userPlaces,
                    ),
        ),
      ),
    );
  }
}
