import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/car_list_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff2c2b34),
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/onboarding.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premium Car. \nEnjoy the luxury',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Premium and Prestige car daily rental. \nExperience the thrill at a lower price.',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => CarListScreen(),
                          ), (route) => false);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => CarListScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Let's Go",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
