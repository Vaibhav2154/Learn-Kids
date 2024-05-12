import 'package:flutter/material.dart';

class ShapesPage extends StatelessWidget {
  const ShapesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shapes & Lines'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shapes',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildShape(
              title: 'Circle',
              description: 'A circle is a simple closed shape. It is the set of all points in a plane that are at a given distance from a given point, the centre.',
              imagePath: 'assets/images/circle.png',
            ),
            SizedBox(height: 20),
            _buildShape(
              title: 'Square',
              description: 'A square is a regular quadrilateral, which means that it has four equal sides and four equal angles (90-degree angles, or right angles).',
              imagePath: 'assets/images/square.png',
            ),
            SizedBox(height: 20),
            _buildShape(
              title: 'Triangle',
              description: 'A triangle is a polygon with three edges and three vertices. It is one of the basic shapes in geometry.',
              imagePath: 'assets/images/triangle.png',
            ),
            SizedBox(height: 40),
            Text(
              'Lines',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildLine(
              title: 'Straight Line',
              description: 'A straight line is the shortest distance between two points. It is a linear figure which extends indefinitely in both directions.',
              imagePath: 'assets/images/straight_line.png',
            ),
            SizedBox(height: 20),
            _buildLine(
              title: 'Curved Line',
              description: 'A curved line is a line that deviates from being straight by bending or curving.',
              imagePath: 'assets/images/curved_line.png',
            ),
            SizedBox(height: 20),
            _buildLine(
              title: 'Dotted Line',
              description: 'A dotted line is a line made up of a series of dots. It is often used to indicate a path or boundary.',
              imagePath: 'assets/images/dotted_line.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShape({required String title, required String description, required String imagePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Image.asset(
          imagePath,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildLine({required String title, required String description, required String imagePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Image.asset(
          imagePath,
          width: 200,
          height: 50,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
