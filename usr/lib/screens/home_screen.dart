import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () {
              Navigator.pushNamed(context, '/admin');
            },
            tooltip: 'Admin Dashboard',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5, // Placeholder for project list
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.home_work),
              title: Text('Project ${index + 1}'),
              subtitle: const Text('Modern Villa in the suburbs'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/project-details');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add project functionality
        },
        tooltip: 'Add Project',
        child: const Icon(Icons.add),
      ),
    );
  }
}
