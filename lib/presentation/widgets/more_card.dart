import 'package:flutter/material.dart';
import 'package:rentapp/data/models/car.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.directions_car, color: Colors.white, size: 16),
                  SizedBox(width: 5),
                  Text(
                    '> ${car.distance.toStringAsFixed(2)} km',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.battery_full, color: Colors.white, size: 16),
                  SizedBox(width: 5),
                  Text(
                    '> ${car.fuelCapacity.toStringAsFixed(2)} L',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),

          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}
