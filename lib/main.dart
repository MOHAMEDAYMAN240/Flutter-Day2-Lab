// task 1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Page'),
//         centerTitle: true,
//       ),
//       body: ProfilePage(),
//     );
//   }
// }
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 200,
//           color: Colors.blueGrey,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 20, bottom: 10),
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: NetworkImage('https://picsum.photos/200'),
//                 ),
//               ),
//               IconButton(
//                 padding: EdgeInsets.only(right: 20, bottom: 20),
//                 icon: Icon(Icons.edit, size: 35, color: Colors.white),
//                 onPressed: () {
//                 },
//               ),
//             ],
//           )
//         ),
//         SizedBox(height: 20),
//         Padding (
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child : Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//         Text(
//           'mohamed ayman',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 10),
//         Row(
//           children: [
//             Icon(Icons.email,),
//             SizedBox(width: 10),
//             Text('mayman23@gmail.com', style: TextStyle(fontSize: 16)),
//           ],
//         ),
//         SizedBox(height: 10),
//         Row(
//           children: [
//             Icon(Icons.phone,),
//             SizedBox(width: 10),
//             Text('+20108364573', style: TextStyle(fontSize: 16)),
//           ],
//         ),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         cardTask('Task 1', 'Complete your profile', Icons.check_circle, Colors.green),
//         cardTask('Task 2', 'Verify your email', Icons.hourglass_bottom, Colors.orange),
//         cardTask('Task 3', 'Add a phone number', Icons.cancel, Colors.red),
//        Card(
//         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         child: ListTile(
//           leading: const Icon(Icons.settings),
//           title: Text('Settings'),
//         ),
//        ),
//        SizedBox(height: 10),
//         Card(
//           color: Colors.blueAccent,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           shadowColor: Colors.black,
//           elevation: 10,
//           margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//           child: ListTile(
//             title: Text('Premium Member' , style: TextStyle(color: Colors.white)),
//             trailing: Icon(Icons.star, color: Colors.yellow,),
//           ),
//         ),
//       ],
//     );
//   }
// }
//  Widget cardTask(
//       String title, String subtitle, IconData icon, Color color) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       child: ListTile(
//         leading: const Icon(Icons.task),
//         title: Text(title),
//         subtitle: Text(subtitle),
//         trailing: Icon(icon, color: color),
//       ),
//     );
//   }

  // task 2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Showcase'),
//         centerTitle: true,
//       ),
//       body: Producst(),
//     );
//   }
// }

// class Producst extends StatelessWidget {
//   const Producst({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Stack(
//           children: [
//             ProductCard(
//               imageUrl: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//               title: 'Product 1',
//               price: '\$10.00',
//             ),
//             Positioned(
//                   top: 15,
//                   left: 30,
//                   child: Container(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                     ),
//                     child: Text(
//                       'NEW',
//                       style: TextStyle(
//                           color: Colors.white,),
//                     ),
//                   ),
//                 ),
//           ],
//         ),
//         ProductCard(
//           imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//           title: 'Product 2',
//           price: '\$20.00',
//         ),
//       ],
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String price;

//   const ProductCard({super.key, 
//     required this.imageUrl,
//     required this.title,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, ),
//       child: Card(
//        shadowColor: Colors.black,
//         elevation: 5,
//         child: Column(
//           children: [
//             Image.network(imageUrl , fit: BoxFit.cover, height: 200, width: double.infinity,),
//             ListTile(
//               title: Text(title , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               subtitle: Text(price , style: TextStyle( color: Colors.green)),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 16, bottom: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
                
//                 children: [
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         elevation: 2,
//                       ),
//                       child: Text('Buy Now' , style: TextStyle(color: Colors.deepPurple)),
//                       onPressed: () {},
//                     ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

   // task 3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         centerTitle: true,
//       ),
//       body: Dashboard(),
//     );
//   }
// }

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Row (
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [

          
//           buildcontainer(Colors.red, "120", "Users"),
//           buildcontainer(Colors.green, "55", "Sales"),
//           buildcontainer(Colors.blue, "30", "Orders"),
//           ],
//         ),
//         SizedBox(height: 20),
//         Stack(
//           alignment: Alignment.topCenter,
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 15),
//               height: 150,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10,
//                     offset: Offset(5, 5),
//                   ),
//                 ],
//               ),
//              ),
                 

//                  Text('Monthly Report', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,),)
//             ,Positioned(
//               top: 20,
//               right: 30,
//                 child: Icon( Icons.bar_chart, size: 40, color: Colors.grey , ),
//             ),
            
            
//           ],
//         ),
//         SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Text('Recent Users', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         ),
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 10),
//            child: Card(
//             elevation: 1,
//             shadowColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)
//                     ),
//                 child: Column(
//                   children: const [
//                     ListTile(
//                       leading: CircleAvatar(child: Text("A")),
//                       title: Text("Alice"),
//                       subtitle: Text("alice@email.com"),
//                     ),
//                     Divider(height: 1),
//                     ListTile(
//                       leading: CircleAvatar(child: Text("B")),
//                       title: Text("Bob"),
//                       subtitle: Text("bob@email.com"),
//                     ),
//                     Divider(height: 1),
//                     ListTile(
//                       leading: CircleAvatar(child: Text("C")),
//                       title: Text("Charlie"),
//                       subtitle: Text("charlie@email.com"),
//                     ),
//                     SizedBox(height: 50),
//                   ],
//                 ),
//               ),
//          ),
//          SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Text('Recent Orders', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         ),
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 10),
//            child: Card(
//             elevation: 1,
//             shadowColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)
//                     ),
//                 child: Column(
//                   children: const [
//                     ListTile(
//                       leading: Icon(Icons.shopping_cart,),
//                       title: Text("#1001"),
//                       trailing: Text('Shipped', style: TextStyle(fontSize: 13)),
//                     ),
//                     Divider(height: 1),
//                      ListTile(
//                       leading: Icon(Icons.shopping_cart,),
//                       title: Text("#1002"),
//                       trailing: Text('Pending', style: TextStyle(fontSize: 13)),
//                     ),
//                     Divider(height: 1),
//                      ListTile(
//                       leading: Icon(Icons.shopping_cart,),
//                       title: Text("#1003"),
//                       trailing: Text('Delivered', style: TextStyle(fontSize: 13)),
//                     ),
//                   ],
//                 ),
//               ),
//          ),
//       ],
//     );
//   }
// }

// Widget buildcontainer( Color color, String number,  String title) {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 10,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(number, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
//           Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
//         ],
//       ),
//     );
  
// }

   // task 4
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Products Gallery",
//       home:  ProductGallery(),
//     );
//   }
// }

// class ProductGallery extends StatelessWidget {
//    ProductGallery({super.key});

//   final List<Map<String, String>> products =  [
//     {
//       "image":
//           "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800",
//       "title": "Network 1",
//       "subtitle": "Best quality sound",
//       "type": "network"
//     },
//     {
//       "image":
//           "https://images.unsplash.com/photo-1469474968028-56623f02e42e?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//       "title": "Network 2",
//       "subtitle": "Capture your moments",
//       "type": "network"
//     },
//     {
//       "image": "images/watch.jpg", 
//       "title": "asset 1",
//       "subtitle": "Stylish & Modern",
//       "type": "asset"
//     },
//     {
//       "image": "images/mockup.jpg", 
//       "title": "asset 2",
//       "subtitle": "Comfort & Style",
//       "type": "asset"
//     },
//      {
//       "image":
//           "https://images.unsplash.com/photo-1682685796014-2f342188a635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//       "title": "network 3",
//       "subtitle": "Capture your moments",
//       "type": "network"
//     },
//      {
//       "image":
//           "https://plus.unsplash.com/premium_photo-1675827055694-010aef2cf08f?q=80&w=2024&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//       "title": "network 4",
//       "subtitle": "Capture your moments",
//       "type": "network"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple[100],
//       appBar: AppBar(
//         title: const Text("Products Gallery"),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.grid_on),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(8),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 8,
//           crossAxisSpacing: 8,
//         ),
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return productCard(products[index]);
//         },
//       ),
//     );
//   }

//   Widget productCard(Map<String, String> product) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Stack(
//           children: [
//             product["type"] == "asset"
//                 ? Image.asset(
//                     product["image"]!,
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   )
//                 : Image.network(
//                     product["image"]!,
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//             Positioned(
//               right: 8,
//               top: 8,
//               child: CircleAvatar(
//                 radius: 17,
//                 backgroundColor: Colors.white.withOpacity(0.6),
//                 child: const Icon(Icons.zoom_in,
//                     color: Colors.blue, size: 24),
//               ),
//             ),

//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: Container(
//                 padding: const EdgeInsets.all(8),
//                 // ignore: deprecated_member_use
//                 color: Colors.black.withOpacity(0.4), 
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       product["title"]!,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     Text(
//                       product["subtitle"]!,
//                       style: const TextStyle(color: Colors.white70),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

   // task 5

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech Tools'),
        centerTitle: true,
        backgroundColor: Colors.purple[50],
      ),
      body: techtools(),
    );
  }
}

// ignore: camel_case_types
class techtools extends StatelessWidget {
  const techtools({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [   
        SizedBox(height: 10),  
        cardTask(
          'Flutter',
          'Cross-platform framework',
          'Build beatiful native apps in record time.',
          'images/flutter.png',
        ),
        cardTask(
          'Dart',
          'Programming language ',
          'Optimized for building user interfaces.',
          'images/dart.png',
        ),
        cardTask(
          'Firebase',
          'Backend as a Service',
          'Real-time database, authentication, and more.',
          'images/firebase.png',
        ),
        cardTask(
          'Git',
          'Version control system',
          'Track changes in your codebase.',
          'images/github.png',
        ),
        cardTask(
          'VS Code',
          'Code editor',
          'Lightweight and powerful code editor.',
          'images/visual.png',
        ),
        cardTask(
          'android',
          'Mobile Os',
          'Most popular mobile operating system.',
          'images/android.png',
        ),
        cardTask(
          'iOS',
          'Mobile Os',
          'Apple\'s mobile operating system.',
          'images/ios.png',
        ),
      ],
    );
  }
}

  Widget cardTask(
      String title, String subtitle, String description , String imagename) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.black,
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: ListTile(
          leading: Image.asset(
            imagename,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title:  
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(subtitle , style: TextStyle(fontSize: 16, color: Colors.purple)),
              SizedBox(height: 5),
              Text(description, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          
          trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.purple, size: 30),
        ),
      ),
    );
  }
