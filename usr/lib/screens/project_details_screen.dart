import 'package:flutter/material.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Modern Villa',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Client: John Doe',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400x200.png/000000/FFFFFF/?text=Project+Image'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Project Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'This is a detailed description of the modern villa project. It includes information about the architecture, interior design, materials used, and the overall vision for the space. The client requested a minimalist yet luxurious feel, which we aimed to achieve through clean lines and high-quality finishes.',
              textAlign: TextAlign.justify,
            ),
             const SizedBox(height: 16),
            const Text(
              'Project Files',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text('Floor_Plan.pdf'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Render_Final.jpg'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
