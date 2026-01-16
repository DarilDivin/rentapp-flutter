import 'package:flutter/material.dart';
import 'package:rentapp/data/models/car.dart';
import 'package:rentapp/presentation/pages/maps_details_page.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';
import 'package:rentapp/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({super.key, required this.car});
  final Car car;

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 1, end: 1.5).animate(_controller!)
    ..addListener(() {
      setState(() {});
    });
    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(' Information')],
        ),
      ),
      body: Column(
        children: [
          CarCard(car: widget.car),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'John Doe',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('\$4225', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapsDetailsPage(car: widget.car),
                        ),
                      );
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Transform.scale(
                          scale: _animation!.value,
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/maps.png', fit: BoxFit.cover),
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                    model: widget.car.model + "-1",
                    distance: widget.car.distance + 100,
                    fuelCapacity: widget.car.fuelCapacity + 10,
                    pricePerDay: widget.car.pricePerDay + 10,
                    image: widget.car.image,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: widget.car.model + "-2",
                    distance: widget.car.distance + 200,
                    fuelCapacity: widget.car.fuelCapacity + 20,
                    pricePerDay: widget.car.pricePerDay + 20,
                    image: widget.car.image,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: widget.car.model + "-3",
                    distance: widget.car.distance + 300,
                    fuelCapacity: widget.car.fuelCapacity + 30,
                    pricePerDay: widget.car.pricePerDay + 30,
                    image: widget.car.image,
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
