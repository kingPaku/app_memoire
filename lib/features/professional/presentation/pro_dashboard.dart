import 'package:flutter/material.dart';

class ProfessionalDashboard extends StatelessWidget {
  const ProfessionalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tableau de bord professionnel')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.inbox),
              title: const Text('Résultats reçus'),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Paramètres'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
