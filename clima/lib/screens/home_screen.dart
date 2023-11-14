import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clima/controllers/global_controller.dart';
import 'package:clima/utils/custom_colors.dart';
import 'package:clima/widgets/comfort_level.dart';
import 'package:clima/widgets/current_weather.dart';
import 'package:clima/widgets/daily_data_forecast.dart';
import 'package:clima/widgets/header_widget.dart';
import 'package:clima/widgets/hourly_data_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    final btnMapa = FloatingActionButton.extended(
      icon: Icon(Icons.location_on),
      label: Text('Ubicacion'),
      onPressed: () {
        Navigator.pushNamed(context, '/mapa');
      },
    );

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(137, 33, 33, 33), // Fondo gris oscuro
        child: SafeArea(
          child: Obx(() => globalController.checkLoading().isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const HeaderWidget(),
                      Container(
                        height: 1,
                        color: CustomColors.dividerLine,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*ComfortLevel(
                        weatherDataCurrent:
                            globalController.getWeather().getCurrentWeather(),
                      ),*/
                      /*const SizedBox(
                        height: 20,
                      ),*/
                      CurrentWeather(
                        weatherDataCurrent:
                            globalController.getWeather().getCurrentWeather(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DailyDataForecast(
                        weatherDataDaily:
                            globalController.getWeather().getDailyWeather(),
                      ),
                      HourlyDataWidget(
                        weatherDataHourly:
                            globalController.getWeather().getHourlyWeather(),
                      ),
                    ],
                  ),
                ),
              ),
        ),
      ),
      floatingActionButton: btnMapa,
    );
  }
}


/*
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    final btnMapa = FloatingActionButton.extended(
      icon: Icon(Icons.location_on),
      label: Text('Ubicacion'),
      onPressed: () {
        Navigator.pushNamed(context, '/mapa');
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const HeaderWidget(),
                    Container(
                      height: 1,
                      color: CustomColors.dividerLine,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    /*ComfortLevel(
                      weatherDataCurrent:
                          globalController.getWeather().getCurrentWeather(),
                    ),*/
                    const SizedBox(
                      height: 20,
                    ),
                    CurrentWeather(
                      weatherDataCurrent:
                          globalController.getWeather().getCurrentWeather(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DailyDataForecast(
                      weatherDataDaily:
                          globalController.getWeather().getDailyWeather(),
                    ),
                    HourlyDataWidget(
                      weatherDataHourly:
                          globalController.getWeather().getHourlyWeather(),
                    ),
                  ],
                ),
              ),
            ),
      ),
      floatingActionButton: btnMapa,
    );
  }
}*/



/*
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {

final btnMapa = FloatingActionButton.extended(

  icon: Icon(Icons.gps_fixed),
  label: Text ('Ubicacion'),
  
  onPressed: (){
      Navigator.pushNamed(context, '/mapa');
    }
  );


    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const HeaderWidget(),
                    CurrentWeather(
                      weatherDataCurrent:
                          globalController.getWeather().getCurrentWeather(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HourlyDataWidget(
                        weatherDataHourly:
                            globalController.getWeather().getHourlyWeather()),
                    DailyDataForecast(
                      weatherDataDaily:
                          globalController.getWeather().getDailyWeather(),
                    ),
                    Container(
                      height: 1,
                      color: CustomColors.dividerLine,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ComfortLevel(
                        weatherDataCurrent:
                            globalController.getWeather().getCurrentWeather())
                  ],
                ),
                
              ),
            
              ),
              

      ),
      floatingActionButton: btnMapa,
    );
  }
}
*/