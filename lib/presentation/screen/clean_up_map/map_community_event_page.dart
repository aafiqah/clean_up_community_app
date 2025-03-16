import 'dart:developer';

import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../index.dart';

class MapEventPage extends StatefulWidget {
  const MapEventPage({super.key});

  @override
  State<MapEventPage> createState() => _MapEventPageState();
}

class _MapEventPageState extends State<MapEventPage> {
  final TextEditingController _searchController = TextEditingController();
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  // Get current location
  Future<Position?> _getCurrentLocation() async {
    try {
      final cubit = context.read<MapCommunityCubit>();
      bool hasPermission = await _checkLocationPermission();
      if (!hasPermission) {
        _mapController.move(LatLng(cubit.state.latitude, cubit.state.longitude), 14);
      }

      final isGpsEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isGpsEnabled) return null;

      Position position = await Geolocator.getCurrentPosition(
          locationSettings:
              const LocationSettings(accuracy: LocationAccuracy.high));

      if (mounted) {
        cubit.setCurrentLocation(position.latitude, position.longitude);
        _mapController.move(LatLng(cubit.state.latitude, cubit.state.longitude), 14);
      }

      return position;
    } catch (e) {
      log('Error getting current location: $e');
      return null;
    }
  }

  // Request location permission
  Future<bool> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      if (!mounted) return false;

      context.read<MapCommunityCubit>().setCurrentLocation(3.1319197, 101.6840589);

      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Location Permission Required'),
          content: const Text(
              'Please grant location permission to use this feature.'),
          actions: [
            TextButton(
              onPressed: () async {
                bool opened = await openAppSettings();

                if (!context.mounted) return;

                if (!opened) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Failed to open settings.')),
                  );
                }

                Navigator.of(context).pop();
              },
              child: const Text('Enable Location Permission'),
            ),
          ],
        ),
      );
    }

    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
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
                    if(context.read<MapCommunityCubit>().state.isFilterPage == true) {
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
                    if(context.read<MapCommunityCubit>().state.isSearchPage==true) {
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
                mapController: _mapController,
                options: MapOptions(
                  initialCenter: LatLng(mapCommunityState.latitude,mapCommunityState.longitude),
                  initialZoom: 10,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: const ['a', 'b', 'c'],
                    userAgentPackageName: 'com.example.app',
                  ),
                  if (LatLng(mapCommunityState.latitude,mapCommunityState.longitude) != const LatLng(0,0))
                    MarkerLayer(
                      markers: [
                        Marker(
                          width: 50,
                          height: 50,
                          point: LatLng(mapCommunityState.latitude,mapCommunityState.longitude),
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
                    _mapController.move(
                      LatLng(mapCommunityState.latitude, mapCommunityState.longitude), 14
                    );
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
                        _mapController.move(
                          _mapController.camera.center,
                          _mapController.camera.zoom + 1,
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
                        _mapController.move(
                          _mapController.camera.center,
                          _mapController.camera.zoom - 1,
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
              if(mapCommunityState.isSearchPage == true)
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: CleanUpColor.white,
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<MapCommunityCubit>().changeSearchPage(false);
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
                        const SizedBox(width: 10,),
                        Expanded(
                          child:  CustomSearchBar(
                            borderRadius: 10,
                            controller: _searchController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if(mapCommunityState.isFilterPage == true)
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: CleanUpColor.white,
                  ),
                  child:  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('data')
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
