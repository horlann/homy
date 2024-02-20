import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart' as latlong2;

mixin GeoMixin {
  bool isInCoveredDeliveryZone(
    LatLng position,
    (LatLng, double) point,
  ) {
    final width = calculateDistanceInMeters(
      latlong2.LatLng(position.latitude, position.longitude),
      latlong2.LatLng(point.$1.latitude, point.$1.longitude),
    );
    return width <= point.$2;
  }

  double calculateDistanceInMeters(latlong2.LatLng pos1, latlong2.LatLng pos2) {
    const latlong2.Distance distance = latlong2.Distance();

    final double distanceInMeters = distance(pos1, pos2);
    return distanceInMeters;
  }
}
