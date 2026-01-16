import 'package:flutter/material.dart';
import 'package:rentapp/data/models/car.dart';
import 'package:rentapp/presentation/pages/car_details_page.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CarDetailsPage(car: car)),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Column(
          children: [
            Image.asset(car.image, height: 120),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                car.model,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/gps.png'),
                        Text('${car.distance.toStringAsFixed(2)} km'),
                      ],
                    ),
                    SizedBox(width: 15),
                    Row(
                      children: [
                        Image.asset('assets/images/pump.png'),
                        Text('${car.fuelCapacity.toStringAsFixed(2)} L'),
                      ],
                    ),
                  ],
                ),
                Text(
                  '\$${car.pricePerDay.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
