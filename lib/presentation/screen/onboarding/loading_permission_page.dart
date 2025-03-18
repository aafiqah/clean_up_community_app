import 'package:flutter/material.dart';
import 'package:clean_up_community_app/core/constant/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../cubits/index.dart';
import '../../widgets/index.dart';

class LoadingPermissionPage extends StatefulWidget {
  const LoadingPermissionPage({super.key});

  @override
  State<LoadingPermissionPage> createState() => _LoadingPermissionPageState();
}

class _LoadingPermissionPageState extends State<LoadingPermissionPage> {

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  Future<void> _getCurrentLocation() async {
    final mapCubit =
        context.read<MapCommunityCubit>(); // Store cubit before async calls

    try {
      bool hasPermission = await _checkLocationPermission();
      bool isGpsEnabled = await Geolocator.isLocationServiceEnabled();

      if (!mounted) return;

      if (!hasPermission || !isGpsEnabled) {
        mapCubit.hasPermissionGps(false);
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.high),
      );

      if (!mounted) return; // Check again after async call

      mapCubit.setCurrentLocation(position.latitude, position.longitude);
      mapCubit.hasPermissionGps(true);
    } catch (e) {
      if (mounted) {
        mapCubit.hasPermissionGps(false);
      }
      debugPrint("Error getting location: $e");
    }
  }

  // Request location permission
  Future<bool> _checkLocationPermission() async {
    // LocationPermission permission = await Geolocator.checkPermission();
    PermissionStatus status = await Permission.location.request();

    if (status == PermissionStatus.denied || status == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    }

    return status == PermissionStatus.limited ||
        status == PermissionStatus.granted;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCommunityCubit, MapCommunityState>(
      builder: (context, mapCommunityState) {
        if(mapCommunityState.hasPermission == false){
          return Container(
            width: MediaQuery.sizeOf(context).width ,
            height: MediaQuery.sizeOf(context).height ,
            color: CleanUpColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Oops', 
                  style: TextStyleShared.textStyle.title.copyWith(
                    color: CleanUpColor.white
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Please allow location access to use this app',
                  style: TextStyleShared.textStyle.subtitle.copyWith(
                    color: CleanUpColor.greyLight
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Submitbutton(
                  onPressed: ()  {
                    _getCurrentLocation();
                  },
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  widget: Text(
                    'Enable Location',
                    textAlign: TextAlign.center,
                    style: TextStyleShared.textStyle.subtitle.copyWith(
                      color: CleanUpColor.greyLight
                    ),
                  ),
                  buttonColor: CleanUpColor.buttonColor,
                  borderRadius: SizeSpacing().doubleSpacing20,
                ),
              ],
            ),
          );
        } else {
          context.goNamed("/home_page");
        }
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
        }
    );
  }
}