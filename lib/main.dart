import 'package:dio/dio.dart';
import 'package:fl_pr_9/di/service.dart';
import 'package:fl_pr_9/model/motorcycles_model.dart';
import 'package:fl_pr_9/moto_card.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Мотоциклы'),
      ),
      body: FutureBuilder(
        future: init(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return MotorcycleCard(motorcycle: snapshot.data![index]);
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    ));
  }

  Future<List<MotorcyclesModel>> init() async {
    try {
      final data =
          await service<Dio>().get('motorcycles?make=Kawasaki&model=Ninja');
      return (data.data as List)
          .map((json) => MotorcyclesModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      print(e.message);
      return [];
    }
  }
}
