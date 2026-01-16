import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentapp/presentation/bloc/car_bloc.dart';
import 'package:rentapp/presentation/bloc/car_event.dart';
import 'package:rentapp/presentation/bloc/car_state.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  // final List<Car> cars = [
  //   Car(
  //     model: "Model Y",
  //     distance: 100.0,
  //     fuelCapacity: 50.0,
  //     pricePerDay: 100.0,
  //     image: 'assets/images/model_y.png',
  //   ),
  //   Car(
  //     model: "Model S",
  //     distance: 150.0,
  //     fuelCapacity: 60.0,
  //     pricePerDay: 150.0,
  //     image: 'assets/images/model_s.png',
  //   ),
  //   Car(
  //     model: "Model X",
  //     distance: 200.0,
  //     fuelCapacity: 70.0,
  //     pricePerDay: 200.0,
  //     image: 'assets/images/model_x.png',
  //   ),
  // ];

  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choose your car"), centerTitle: true),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CarLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<CarBloc>().add(FetchCarsEvent());
              },
              child: ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (context, index) {
                  return CarCard(car: state.cars[index]);
                },
              ),
            );
          } else if (state is CarError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}
