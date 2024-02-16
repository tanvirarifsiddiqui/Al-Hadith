import 'package:al_hadith/database_initialization.dart';
import 'package:al_hadith/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/databases/database.dart';
import '../../utils/shape.dart';

class HadithPage extends StatefulWidget {
  final int bookId;
  final int chapterId;
  final String bookName;
  final String chapterName;

  const HadithPage({
    required this.bookId,
    required this.chapterId,
    required this.bookName,
    required this.chapterName,
    Key? key,
  }) : super(key: key);

  @override
  _HadithPageState createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  bool _isLoading = true;
  List<Hadith> _hadiths = [];
  List<Section> _sections = [];

  @override
  void initState() {
    super.initState();
    _loadHadiths();
  }

  Future<void> _loadHadiths() async {
    final _database = DatabaseManager.databaseInstance;

    final sections = await _database!.getSectionByBookIdAndChapterId(
        widget.bookId, widget.chapterId);
    final hadiths = await _database.getHadithByBookAndChapterId(
        widget.bookId, widget.chapterId);

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
              widget.chapterName,
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
            color: Colors.grey.shade200,
            // color: Color(0xFFE1E1E1),
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
                      final sectionHadiths = _hadiths
                          .where((hadith) => hadith.section_id == section.id)
                          .toList();

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section card
                          Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 8),
                            child: ListTile(
                              title: Text(
                                '${section.title}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppConstants
                                        .primaryColor), // Make section number green
                              ), // Make section number green
                              subtitle: section.preface != ""
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (section.preface != "")
                                          Divider(), // Add a divider if subtitle is not null
                                        Text(
                                          section.preface, // Subtitle
                                          style: TextStyle(
                                            color: Colors.grey.shade800,
                                              fontSize: 15),
                                        ),
                                      ],
                                    )
                                  : null,
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
                                margin: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8),
                                          width: 35, // Adjust size as needed
                                          height: 37, // Adjust size as needed
                                          child: CustomPaint(
                                            painter: HexagonPainter(
                                                color:
                                                    AppConstants.primaryColor,
                                                abvr_code: "B"),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              hadith
                                                  .book_name, // Placeholder text, replace with actual data
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              hadith
                                                  .hadith_key, // Placeholder text, replace with actual data
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.green.shade700),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 70, // Adjust size as needed
                                          height: 25, // Adjust size as needed
                                          decoration: BoxDecoration(
                                            color: AppConstants
                                                .primaryColor, // Filled color for hadith grade
                                            borderRadius: BorderRadius.circular(
                                                20), // Set border radius to 50
                                          ),
                                          child: Center(
                                              child: Text(
                                            hadith.grade,
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white),
                                          )),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.more_vert),
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  padding: EdgeInsets.all(16),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(' অন্যান্য অপশন',style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.bold),
                                                          ),
                                                          Spacer(),
                                                          IconButton(
                                                              onPressed: (){
                                                                Navigator.of(context).pop();
                                                              },
                                                              icon: Icon(Icons.close))
                                                        ],
                                                      ), // Placeholder text, replace with actual data
                                                      SizedBox(height: 16),
                                                      ListTile(
                                                        leading: Icon(
                                                            Icons.bookmark_outline),
                                                        title: Text(
                                                            'Add Collections'),
                                                        onTap: () {
                                                          // Handle Add Collections action
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading: Icon(
                                                            Icons.copy_outlined),
                                                        title: Text(
                                                            'Copy Hadith BD'),
                                                        onTap: () {
                                                          // Handle Copy Hadith BD action
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading: Icon(
                                                            Icons.copy_outlined),
                                                        title: Text(
                                                            'Copy Hadith AR'),
                                                        onTap: () {
                                                          // Handle Copy Hadith AR action
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading: Icon(
                                                            Icons.copy_outlined),
                                                        title: Text('Copy'),
                                                        onTap: () {
                                                          // Handle Copy action
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading:
                                                            Icon(Icons.share_outlined),
                                                        title: Text('Share'),
                                                        onTap: () {
                                                          // Handle Share action
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading:
                                                            Icon(Icons.report_outlined),
                                                        title: Text('Report'),
                                                        onTap: () {
                                                          // Handle Report action
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            hadith.ar,
                                            textAlign: TextAlign.right,
                                            style: AppConstants.arTextStyle,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "${hadith.narrator} থেকে বর্ণিত:",
                                            style: TextStyle(
                                                color:
                                                    AppConstants.primaryColor,
                                                fontSize: 17),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            hadith.bn,
                                            style: AppConstants.bnTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
