import 'package:fl_pr_9/moto_details.dart';
import 'package:flutter/material.dart';
import 'package:fl_pr_9/model/motorcycles_model.dart';

class MotorcycleCard extends StatelessWidget {
  final MotorcyclesModel motorcycle;

  const MotorcycleCard({super.key, required this.motorcycle});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MotorcycleDetailsPage(motorcycle: motorcycle),
            ),
          );
        },
        leading: const Icon(Icons.motorcycle),
        title: Text(motorcycle.model),
        subtitle: Text(motorcycle.make),
        trailing: Text('\$${motorcycle.type}'),
      ),
    );
  }
}
