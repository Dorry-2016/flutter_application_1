import 'package:flutter/material.dart';

// void main() {
//   runApp(NannyApp());
// }

// class NannyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Nanny App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: NannyListScreen(),
//     );
//   }
// }

class NannyListScreen extends StatelessWidget {
  final List<Nanny> nannies = [
    Nanny('Doris Ogega', 'Mombasa', 'Full-time', 'assets/nanny1.jpg'),
    Nanny('Jane Ogega', 'Nairobi', 'Part-time', 'assets/nanny2.jpg'),
    // Add more nanny profiles here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nanny List'),
      ),
      body: ListView.builder(
        itemCount: nannies.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(nannies[index].image),
            ),
            title: Text(nannies[index].name),
            subtitle: Text(
                '${nannies[index].location} - ${nannies[index].availability}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NannyDetailsScreen(nannies[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class NannyDetailsScreen extends StatelessWidget {
  final Nanny nanny;

  NannyDetailsScreen(this.nanny);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nanny Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(nanny.image),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: ${nanny.name}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Location: ${nanny.location}'),
            SizedBox(height: 10),
            Text('Availability: ${nanny.availability}'),
          ],
        ),
      ),
    );
  }
}

class Nanny {
  final String name;
  final String location;
  final String availability;
  final String image;

  Nanny(this.name, this.location, this.availability, this.image);
}
