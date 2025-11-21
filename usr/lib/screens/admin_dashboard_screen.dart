import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: <Widget>[
          _buildDashboardCard(
            context,
            icon: Icons.people,
            label: 'Manage Users',
            onTap: () {},
          ),
          _buildDashboardCard(
            context,
            icon: Icons.business_center,
            label: 'Manage Projects',
            onTap: () {},
          ),
          _buildDashboardCard(
            context,
            icon: Icons.sell,
            label: 'Resale Items',
            onTap: () {},
          ),
          _buildDashboardCard(
            context,
            icon: Icons.analytics,
            label: 'Analytics',
            onTap: () {},
          ),
           _buildDashboardCard(
            context,
            icon: Icons.settings,
            label: 'Settings',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 48, color: Theme.of(context).primaryColor),
            const SizedBox(height: 16),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
