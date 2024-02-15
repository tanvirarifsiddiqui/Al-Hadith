
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../../data/databases/database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AppDatabase _database;
  bool _isLoading = true;
  List<Book> _books = [];

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    // final dbFolder = await getApplicationDocumentsDirectory();
    // final file = p.join(dbFolder.path, 'app.db');
    _database = AppDatabase();

    // // Check if database file exists
    // final isExists = await File(file).exists();
    // if (!isExists) {
    //   // Database file doesn't exist, import data from pre-populated database
    //   await _importData(file);
    // }

    // Fetch books from the database
    final books = await _database.getAllBooks();
    setState(() {
      _books = books;
      _isLoading = false;
    });

    // Print a message to the console when data import is completed

  }

  Future<void> _importData(String file) async {
    // final dbFolder = await getApplicationDocumentsDirectory();
    final targetFile = File(file);
    final assetBundle = DefaultAssetBundle.of(context);

    if (!await targetFile.exists()) {
      // Extract the pre-populated database file from assets
      final data = await assetBundle.load('assets/hadith_bn_test.db');
      final bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await targetFile.writeAsBytes(bytes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books List'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          final book = _books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.title_ar),
            // Display other book details here as needed
          );
        },
      ),
    );
  }
}



// import 'dart:io';
//
// import 'package:al_hadith/data/databases/database.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path/path.dart' as p;
// import 'package:get/get.dart';
//
// import 'package:al_hadith/presentation/controllers/home_controller.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool _isCopying = false;
//   late AppDatabase database;
//   late List<Book> bookList; // from database.g.dart
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize your database (e.g., open the database connection)
//     database = AppDatabase(); // Replace with your actual initialization logic
//     // Fetch the book list from the database
//     _copyDatabaseFromAssets();
//   }
//
//
//   Future<void> _fetchBookList() async {
//     try {
//       bookList = await database.getAllBooks(); // Replace with your actual query
//     } catch (error) {
//       print('Error fetching book list: $error');
//     }
//     // Call setState to rebuild the UI with the fetched data
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: _isCopying
//           ? Center(
//         child: LinearProgressIndicator(), // Show a loading indicator while copying
//       )
//           : Center(
//         child: FutureBuilder<List<Book>>(
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               // Display your book list here
//               return ListView.builder(
//                 itemCount: bookList.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(bookList[index].title),
//                     // Other book details go here
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Text(snapshot.error.toString());
//             } else {
//               // Show a loading indicator while fetching data
//               return Text("No Books");
//             }
//           },
//           future: null, // Pass the actual future here
//         ),
//       ),
//     );
//   }
// }
//
//
// //
// // class HomePage extends StatelessWidget {
// //   final HomeController controller = Get.find();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Home'),
// //       ),
// //       body: Center(
// //         child: GetBuilder<HomeController>(
// //           builder: (controller) {
// //             if (controller.isLoading) {
// //               return CircularProgressIndicator();
// //             } else if (controller.hasError) {
// //               return Text('Error: ${controller.errorMessage}');
// //             } else {
// //               return ListView.builder(
// //                 itemCount: controller.books.length,
// //                 itemBuilder: (context, index) {
// //                   return ListTile(
// //                     title: Text(controller.books[index].title),
// //                     onTap: () {
// //                       // Navigate to chapters page
// //                       // You can use Get.to() to navigate to chapters page
// //                     },
// //                   );
// //                 },
// //               );
// //             }
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
