import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Welcome to the Dashboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            _buildDashboardItem(
              context,
              'Education Module',
              'assets/education.jpg',
              '/education',
              Icons.library_books,
              Colors.blue.shade300
            ),
            const SizedBox(height: 20,),
            _buildDashboardItem(
              context,
              'Interactive Quiz',
              'assets/quiz.jpg',
              '/quiz',
              Icons.quiz,
              Colors.grey
            ),
            const SizedBox(height: 20,),

            _buildDashboardItem(
              context,
              'News and Updates',
              'assets/quiz.jpg',
              '/news',
              Icons.new_releases,
              Colors.red
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(
    BuildContext context,
    String title,
    String imagePath,
    String route,
      IconData icon,
      Color color

  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
            const SizedBox(width: 10,),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
