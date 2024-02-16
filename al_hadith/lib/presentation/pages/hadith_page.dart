import 'package:al_hadith/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/databases/database.dart';

class HadithPage extends StatefulWidget {
  final int bookId;
  final int chapterId;
  final String bookName;

  const HadithPage({
    required this.bookId,
    required this.chapterId,
    required this.bookName,
    Key? key,
  }) : super(key: key);

  @override
  _HadithPageState createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  late AppDatabase _database;
  bool _isLoading = true;
  List<Hadith> _hadiths = [];
  List<Section> _sections = [];

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    _database = AppDatabase();

    final sections = await _database.getSectionByBookIdAndChapterId(widget.bookId, widget.chapterId);
    final hadiths = await _database.getHadithByBookAndChapterId(widget.bookId, widget.chapterId);

    setState(() {
      _sections = sections;
      _hadiths = hadiths;
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
      body: Material(
        color: AppConstants.primaryColor,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemCount: _sections.length,
              itemBuilder: (context, index) {
                final section = _sections[index];
                final sectionHadiths = _hadiths.where((hadith) => hadith.section_id == section.id).toList();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section card
                    Card(
                      elevation: 3,
                      color: AppConstants.thirdColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // Display section ID inside a circle with fill color
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFF70BB65),
                              ),
                              child: Center(
                                child: Text(
                                  section.section_id.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            // Display section title and description
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    section.preface,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  Text(
                                    "হাদিসের রেঞ্জ: ${section.book_name}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Hadiths within the same section
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: sectionHadiths.length,
                      itemBuilder: (context, index) {
                        final hadith = sectionHadiths[index];
                        return Card(
                          elevation: 3,
                          color: AppConstants.thirdColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(
                                hadith.bn ?? '',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                hadith.ar ?? '',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
