import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key, required this.osbbModel});
final OSBBModel osbbModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16
      )),
      child: SizedBox(height: 180,width: double.infinity,child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(osbbModel.imagePath,fit: BoxFit.fill,)),
          Positioned(
            top: 12,
            left: 12,
            child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(osbbModel.name),
            ),
          )),
          Positioned(
            bottom: 12,
            left: 12,
            child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(osbbModel.address),
            ),
          ))
        ],
      ),),
    );
  }
}