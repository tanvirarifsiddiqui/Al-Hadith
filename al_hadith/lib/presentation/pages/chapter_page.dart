import 'package:al_hadith/presentation/pages/hadith_page.dart';
import 'package:al_hadith/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/databases/database.dart';

class ChapterPage extends StatefulWidget {
  final int bookId;
  final String bookName;

  const ChapterPage({
    required this.bookId,
    required this.bookName,
    Key? key,
  }) : super(key: key);

  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  late AppDatabase _database;
  bool _isLoading = true;
  List<Chapter> _chapters = [];
  List<Chapter> _filteredChapters = []; // Add a list to store filtered chapters
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    _database = AppDatabase();

    final chapters = await _database.getChaptersByBookId(widget.bookId);
    setState(() {
      _chapters = chapters;
      _filteredChapters = chapters; // Initialize filtered chapters with all chapters
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bookName,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '৭৫৬৩ টি হাদিস',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterChapters,
              decoration: const InputDecoration(
                labelText: 'অধ্যায় সার্চ করুন',
                prefixIcon: Icon(Icons.search),
                prefixIconColor: AppConstants.primaryColor,
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: AppConstants.primaryColor),
              ),
            ),
          ),
          Expanded(
            child: _isLoading
                ? Center(child: LinearProgressIndicator())
                : ListView.builder(
              itemCount: _filteredChapters.length,
              itemBuilder: (context, index) {
                final chapter = _filteredChapters[index];
                return GestureDetector(
                  onTap: (){
                    Get.to(()=>HadithPage(bookId: widget.bookId, chapterId: index+1, bookName: widget.bookName));
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
                              color: const Color(0xFF70BB65),
                            ),
                            child: Center(
                              child: Text(
                                chapter.number.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          // Display title and subtitle
                          Expanded( // Wrap the container with Expanded
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chapter.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis, // Define how to handle overflow
                                  maxLines: 2, // Maximum number of lines to display
                                ),
                                Text(
                                  "হাদিসের রেঞ্জ: ${chapter.hadis_range}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2, // Adjust as needed
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _filterChapters(String value) {
    setState(() {
      // Filter chapters based on the search value
      _filteredChapters = _chapters.where((chapter) =>
          chapter.title.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
}

