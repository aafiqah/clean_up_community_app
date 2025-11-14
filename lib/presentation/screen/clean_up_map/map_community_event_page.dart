import 'package:clean_up_community_app/core/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../application/index.dart';
import '../../index.dart';

class MapEventPage extends StatefulWidget {
  const MapEventPage({super.key});

  @override
  State<MapEventPage> createState() => _MapEventPageState();
}

class _MapEventPageState extends State<MapEventPage> {
  final TextEditingController _searchController = TextEditingController();
  MapController? mapController;
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    mapController = MapController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    mapController?.dispose();
    super.dispose();
  }

  Future<Position?> _getCurrentLocation() async {
    final cubit = context.read<MapCommunityCubit>();
    try {
      bool hasPermission = await _checkLocationPermission();
      if (!hasPermission) {
        cubit.hasLocationPermission(false);
        mapController?.move(
            LatLng(cubit.state.latitude, cubit.state.longitude), 14);
        return null;
      }

      bool isGpsEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isGpsEnabled) {
        await _showEnableLocationDialog();
      }

      if (hasPermission && isGpsEnabled) {
        Position position = await Geolocator.getCurrentPosition(
            locationSettings:
                const LocationSettings(accuracy: LocationAccuracy.high));
        cubit.setCurrentLocation(position.latitude, position.longitude);
        cubit.hasLocationPermission(true);
        mapController?.move(LatLng(position.latitude, position.longitude), 14);
      }

      return await Geolocator.getCurrentPosition(
          locationSettings:
              const LocationSettings(accuracy: LocationAccuracy.high));
    } catch (e) {
      return null;
    }
  }

  Future<bool> _checkLocationPermission() async {
    final cubit = context.read<MapCommunityCubit>();
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (cubit.state.latitude == 0 && cubit.state.longitude == 0) {
        cubit.setCurrentLocation(3.1319197, 101.6840589);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      await _showLocationPermissionDialog();
    }

    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  Future<void> _showEnableLocationDialog() async {
    if (!mounted) return;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Enable Location'),
        content: const Text(
          "You need to allow access to location in order to use Pcari.\nPlease enable location and try again.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (Navigator.canPop(dialogContext)) {
                Navigator.pop(dialogContext);
                _getCurrentLocation();
              }
            },
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }

  Future<void> _showLocationPermissionDialog() async {
    if (!mounted) return;

    await showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Location Permission Required'),
        content: const Text(
          'Please grant location permission to use this feature in app settings.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (Navigator.canPop(dialogContext)) {
                Navigator.pop(dialogContext);
              }
              context
                  .read<MapCommunityCubit>()
                  .setCurrentLocation(3.1319197, 101.6840589);
            },
            child: const Text('Close'),
          ),
          TextButton(
            onPressed: () {
              openAppSettings();
            },
            child: const Text('Settings'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<MapCommunityCubit, MapCommunityState>(
      builder: (context, mapCommunityState) {
        return Scaffold(
          backgroundColor: CleanUpColor.primary,
          appBar: AppBarShared(
            stringTitle: 'Map Event',
            titleColor: CleanUpColor.white,
            backgroundColor: CleanUpColor.primary,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    if (context.read<MapCommunityCubit>().state.isFilterPage ==
                        true) {
                      context.read<MapCommunityCubit>().changeFilterPage(false);
                    }

                    context.read<MapCommunityCubit>().changeSearchPage(true);
                  },
                  child: const Icon(Icons.search_rounded,
                      color: CleanUpColor.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    if (context.read<MapCommunityCubit>().state.isSearchPage ==
                        true) {
                      context.read<MapCommunityCubit>().changeSearchPage(false);
                    }

                    context.read<MapCommunityCubit>().changeFilterPage(true);
                  },
                  child: const Icon(
                    Icons.filter_list_rounded,
                    color: CleanUpColor.white,
                  ),
                ),
              )
            ],
          ),
          body: Stack(
            children: [
              FlutterMap(
                key: const ValueKey('location_map'),
                mapController: mapController,
                options: MapOptions(
                  initialCenter: LatLng(
                      mapCommunityState.latitude, mapCommunityState.longitude),
                  initialZoom: 10,
                  // onTap: (tapPosition, latLng) {
                  //   setState(() {
                  //     markers = List.from(markers)
                  //       ..add(
                  //         Marker(
                  //           width: 50,
                  //           height: 50,
                  //           point: latLng,
                  //           child: const Icon(
                  //             Icons.location_pin,
                  //             color: Colors.red,
                  //             size: 50,
                  //           ),
                  //         ),
                  //       );
                  //   });
                  // },
                ),
                children: [
                  TileLayer(
                    key: const ValueKey('tile_layer_map'),
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  // MarkerLayer(
                  //   markers: [
                  //     Marker(
                  //       width: 50,
                  //       height: 50,
                  //       point: LatLng(mapCommunityState.latitude,
                  //           mapCommunityState.longitude),
                  //       child: const Icon(
                  //         Icons.location_pin,
                  //         color: CleanUpColor.primary,
                  //         size: 50,
                  //       ),
                  //     ),
                  //     ...markers, // Ensures dynamically added markers are shown
                  //   ],
                  // ),
                  if (LatLng(mapCommunityState.latitude,
                          mapCommunityState.longitude) !=
                      const LatLng(0, 0))
                    MarkerLayer(
                      markers: [
                        Marker(
                          key: const ValueKey('pin_marker_location'),
                          width: 50,
                          height: 50,
                          point: LatLng(mapCommunityState.latitude,
                              mapCommunityState.longitude),
                          child: const Icon(
                            Icons.location_pin,
                            color: CleanUpColor.primary,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    _getCurrentLocation();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CleanUpColor.primary,
                      boxShadow: const [
                        BoxShadow(
                          color: CleanUpColor.greyMedium,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 2,
                        ),
                      ],
                      border: Border.all(
                        color: CleanUpColor.primary,
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      Icons.my_location_rounded,
                      size: 30,
                      color: CleanUpColor.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Column(
                  children: [
                    FloatingActionButton(
                      heroTag: 'zoomIn',
                      onPressed: () {
                        mapController?.move(
                          mapController!.camera.center,
                          mapController!.camera.zoom + 1,
                        );
                      },
                      backgroundColor: CleanUpColor.primary,
                      foregroundColor: CleanUpColor.white,
                      mini: true,
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      heroTag: 'zoomOut',
                      onPressed: () {
                        mapController?.move(
                          mapController!.camera.center,
                          mapController!.camera.zoom - 1,
                        );
                      },
                      backgroundColor: CleanUpColor.primary,
                      foregroundColor: CleanUpColor.white,
                      mini: true,
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
              if (mapCommunityState.isSearchPage == true)
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: CleanUpColor.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<MapCommunityCubit>()
                                .changeSearchPage(false);
                            _searchController.clear();
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CleanUpColor.white,
                              border: Border.all(
                                color: CleanUpColor.greyLight,
                                width: 1.5,
                              ),
                            ),
                            child: const Icon(
                              Icons.close_rounded,
                              size: 30,
                              color: CleanUpColor.greyMedium,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomSearchBar(
                            borderRadius: 10,
                            controller: _searchController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (mapCommunityState.isFilterPage == true)
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: CleanUpColor.white,
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(15), child: Text('data')),
                ),
            ],
          ),
        );
      },
    );
  }
}
