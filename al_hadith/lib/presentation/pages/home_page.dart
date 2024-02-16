import 'package:al_hadith/presentation/pages/chapter_page.dart';
import 'package:al_hadith/utils/constants.dart';
import 'package:flutter/material.dart';
import '../../data/databases/database.dart';
import 'package:get/get.dart';

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
    _database = AppDatabase();

    final books = await _database.getAllBooks();
    setState(() {
      _books = books;
      _isLoading = false;
    });
  }

  //book colors
  Color _parseColorCode(int index) {
    // Define a list of 6 random colors
    final List<Color> colors = [
      const Color(0xFF70BB65),
      const Color(0xFF2D91C2),
      const Color(0xFF27B5E5),
      const Color(0xFF8E44AD),
      const Color(0xFF4570E5),
      const Color(0xFFEA622E),
    ];

    // Return the color based on the index value
    return index >= 0 && index < colors.length ? colors[index] : Colors.black;
  }

  //hadith numbers
  Future<String?> _getHadithNumber(int index) async {
    // Define a map to store the index-to-string mappings
    final Map<int, String> hadithNumbers = {
      0: '৭৫৬৩',
      1: '৭৪৫৩',
      2: '৫৭৫৮',
      3: '৫২৭৪',
      4: '৩৯৫৬',
      5: '৪৩৪১',
    };

    // Return the corresponding string for the given index
    return hadithNumbers.containsKey(index)
        ? hadithNumbers[index]
        : 'Invalid Index';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('আল হাদিস',style: TextStyle(color: Colors.white),)),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: _isLoading
          ? Center(child: LinearProgressIndicator())
          : ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                final book = _books[index];
                return GestureDetector(
                  onTap: (){
                    Get.to(()=>ChapterPage(bookId: index+1, bookName: book.title,));
                  },
                  child: Card(
                    elevation: 3,
                    color: AppConstants.thirdColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          // Display abvr_code inside a hexagon with fill color
                          Container(
                            width: 40, // Adjust width as needed
                            height: 40, // Adjust height as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _parseColorCode(index),
                            ),
                            child: Center(
                              child: Text(
                                book.abvr_code,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          // Display title and subtitle
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                book.title_ar,
                              ),
                            ],
                          ),
                          Spacer(),
                          // Display total hadith number
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder<String?>(
                                future: _getHadithNumber(index),
                                builder: (context, snapshot) {
                                  return Text(
                                    snapshot.data ?? 'No Data',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  );
                                },
                              ),
                              Text(
                                'হাদিস',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
