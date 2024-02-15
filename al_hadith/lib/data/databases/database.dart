
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart'; // Generated by drift

// Define models for each table
@DataClassName('Book')
class BooksTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get title_ar => text()();
  IntColumn get number_of_hadis => integer()();
  TextColumn get abvr_code => text()();
  TextColumn get book_name => text()();
  TextColumn get book_descr => text()();
  TextColumn get color_code => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Chapter')
class ChapterTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chapter_id => integer()();
  IntColumn get book_id => integer().references(Book, #id)();
  TextColumn get title => text()();
  IntColumn get number => integer()();
  TextColumn get hadis_range => text()();
  TextColumn get book_name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Hadith')
class HadithTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get book_id => integer()();
  TextColumn get book_name => text()();
  IntColumn get chapter_id => integer()();
  IntColumn get section_id => integer()();
  TextColumn get hadith_key => text()();
  IntColumn get hadith_id => integer()();
  TextColumn get narrator => text()();
  TextColumn get bn => text()();
  TextColumn get ar => text()();
  TextColumn get ar_diacless => text()();
  TextColumn get note => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Section')
class SectionTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get book_id => integer()();
  IntColumn get book_name => integer()();
  IntColumn get chapter_id => integer()();
  IntColumn get section_id => integer()();
  TextColumn get title => text()();
  TextColumn get preface => text()();
  IntColumn get number => integer()();
  IntColumn get sort_order => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (!await file.exists()) {
      // Extract the pre-populated database file from assets
      final blob = await rootBundle.load('assets/hadith_bn_test.db');
      final buffer = blob.buffer;
      await file.writeAsBytes(buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
      print('Data import completed.');
    }

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}

// Define Database
@DriftDatabase(tables: [BooksTable, ChapterTable, HadithTable, SectionTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1; // Define the current schema version

// Define migration strategies (if needed)
  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (migrator, from, to) async {
      if (from == 1) {
        // Perform migration from version 1 to version 2
        // Example: migrator.createTable(...);
      }
    },
  );


  // Define methods to interact with the database
  Future<List<Book>> getAllBooks() => select(booksTable).get();
  Future<List<Chapter>> getAllChapters() => select(chapterTable).get();
  Future<List<Hadith>> getAllHadiths() => select(hadithTable).get();
  Future<List<Section>> getAllSections() => select(sectionTable).get();
}


