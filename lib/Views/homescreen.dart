// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class Home extends StatelessWidget {
//   final List<Map<String, String>> users = [
//     {"name": "John Doe", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
//     {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},
//     // Add more people here
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: const Icon(
//           Icons.location_on,
//           color: Colors.white,
//         ),
//         title: const Text(
//           "Nilambur",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body:
//      // const SearchBar(leading: Text("Search by Name"),
//         Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.search),
//                 hintText: "Search by Name",
//                // suffixIcon: suffixIcon,
//               ),
//             ),Text("User's List"),
//             ListView.builder( itemCount: users.length,
//                 itemBuilder:(context, index) {
//               return ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(users[index]["imageUrl"]!),
//                 ),
//                 title: Text(users[index]["name"]!),
//                 subtitle: Text(users[index]["details"]!),
//                );
//             }
//             ),
//
//       ]
//     )
//     );
//
//
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  final List<Map<String, String>> users = [
    {"name": "Martin", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
    {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},
    {"name": "John Doe", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
    {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},
    {"name": "John Doe", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
    {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},
    {"name": "John Doe", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
    {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},
    {"name": "John Doe", "details": "Software Engineer", "imageUrl": "assets/Group.svg"},
    {"name": "Jane Smith", "details": "Product Manager", "imageUrl": "https://example.com/image2.jpg"},

    // Add more people here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        title: const Text(
          "Nilambur",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: "Search by Name",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Text(
              "User's List",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: users[index]["imageUrl"]!.contains('http')
                      ? CircleAvatar(
                    backgroundImage: NetworkImage(users[index]["imageUrl"]!),
                  )
                      : CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: SvgPicture.asset(
                      users[index]["imageUrl"]!,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  title: Text(users[index]["name"]!),
                  subtitle: Text(users[index]["details"]!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
