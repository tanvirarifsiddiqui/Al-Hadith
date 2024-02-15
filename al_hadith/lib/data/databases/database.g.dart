// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BooksTableTable extends BooksTable
    with TableInfo<$BooksTableTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _title_arMeta =
      const VerificationMeta('title_ar');
  @override
  late final GeneratedColumn<String> title_ar = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _number_of_hadisMeta =
      const VerificationMeta('number_of_hadis');
  @override
  late final GeneratedColumn<int> number_of_hadis = GeneratedColumn<int>(
      'number_of_hadis', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _abvr_codeMeta =
      const VerificationMeta('abvr_code');
  @override
  late final GeneratedColumn<String> abvr_code = GeneratedColumn<String>(
      'abvr_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_descrMeta =
      const VerificationMeta('book_descr');
  @override
  late final GeneratedColumn<String> book_descr = GeneratedColumn<String>(
      'book_descr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _color_codeMeta =
      const VerificationMeta('color_code');
  @override
  late final GeneratedColumn<String> color_code = GeneratedColumn<String>(
      'color_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        title_ar,
        number_of_hadis,
        abvr_code,
        book_name,
        book_descr,
        color_code
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books_table';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_title_arMeta,
          title_ar.isAcceptableOrUnknown(data['title_ar']!, _title_arMeta));
    } else if (isInserting) {
      context.missing(_title_arMeta);
    }
    if (data.containsKey('number_of_hadis')) {
      context.handle(
          _number_of_hadisMeta,
          number_of_hadis.isAcceptableOrUnknown(
              data['number_of_hadis']!, _number_of_hadisMeta));
    } else if (isInserting) {
      context.missing(_number_of_hadisMeta);
    }
    if (data.containsKey('abvr_code')) {
      context.handle(_abvr_codeMeta,
          abvr_code.isAcceptableOrUnknown(data['abvr_code']!, _abvr_codeMeta));
    } else if (isInserting) {
      context.missing(_abvr_codeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    if (data.containsKey('book_descr')) {
      context.handle(
          _book_descrMeta,
          book_descr.isAcceptableOrUnknown(
              data['book_descr']!, _book_descrMeta));
    } else if (isInserting) {
      context.missing(_book_descrMeta);
    }
    if (data.containsKey('color_code')) {
      context.handle(
          _color_codeMeta,
          color_code.isAcceptableOrUnknown(
              data['color_code']!, _color_codeMeta));
    } else if (isInserting) {
      context.missing(_color_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      title_ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      number_of_hadis: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_hadis'])!,
      abvr_code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abvr_code'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      book_descr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_descr'])!,
      color_code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color_code'])!,
    );
  }

  @override
  $BooksTableTable createAlias(String alias) {
    return $BooksTableTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String title_ar;
  final int number_of_hadis;
  final String abvr_code;
  final String book_name;
  final String book_descr;
  final String color_code;
  const Book(
      {required this.id,
      required this.title,
      required this.title_ar,
      required this.number_of_hadis,
      required this.abvr_code,
      required this.book_name,
      required this.book_descr,
      required this.color_code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['title_ar'] = Variable<String>(title_ar);
    map['number_of_hadis'] = Variable<int>(number_of_hadis);
    map['abvr_code'] = Variable<String>(abvr_code);
    map['book_name'] = Variable<String>(book_name);
    map['book_descr'] = Variable<String>(book_descr);
    map['color_code'] = Variable<String>(color_code);
    return map;
  }

  BooksTableCompanion toCompanion(bool nullToAbsent) {
    return BooksTableCompanion(
      id: Value(id),
      title: Value(title),
      title_ar: Value(title_ar),
      number_of_hadis: Value(number_of_hadis),
      abvr_code: Value(abvr_code),
      book_name: Value(book_name),
      book_descr: Value(book_descr),
      color_code: Value(color_code),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      title_ar: serializer.fromJson<String>(json['title_ar']),
      number_of_hadis: serializer.fromJson<int>(json['number_of_hadis']),
      abvr_code: serializer.fromJson<String>(json['abvr_code']),
      book_name: serializer.fromJson<String>(json['book_name']),
      book_descr: serializer.fromJson<String>(json['book_descr']),
      color_code: serializer.fromJson<String>(json['color_code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'title_ar': serializer.toJson<String>(title_ar),
      'number_of_hadis': serializer.toJson<int>(number_of_hadis),
      'abvr_code': serializer.toJson<String>(abvr_code),
      'book_name': serializer.toJson<String>(book_name),
      'book_descr': serializer.toJson<String>(book_descr),
      'color_code': serializer.toJson<String>(color_code),
    };
  }

  Book copyWith(
          {int? id,
          String? title,
          String? title_ar,
          int? number_of_hadis,
          String? abvr_code,
          String? book_name,
          String? book_descr,
          String? color_code}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        title_ar: title_ar ?? this.title_ar,
        number_of_hadis: number_of_hadis ?? this.number_of_hadis,
        abvr_code: abvr_code ?? this.abvr_code,
        book_name: book_name ?? this.book_name,
        book_descr: book_descr ?? this.book_descr,
        color_code: color_code ?? this.color_code,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('title_ar: $title_ar, ')
          ..write('number_of_hadis: $number_of_hadis, ')
          ..write('abvr_code: $abvr_code, ')
          ..write('book_name: $book_name, ')
          ..write('book_descr: $book_descr, ')
          ..write('color_code: $color_code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, title_ar, number_of_hadis,
      abvr_code, book_name, book_descr, color_code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.title_ar == this.title_ar &&
          other.number_of_hadis == this.number_of_hadis &&
          other.abvr_code == this.abvr_code &&
          other.book_name == this.book_name &&
          other.book_descr == this.book_descr &&
          other.color_code == this.color_code);
}

class BooksTableCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> title_ar;
  final Value<int> number_of_hadis;
  final Value<String> abvr_code;
  final Value<String> book_name;
  final Value<String> book_descr;
  final Value<String> color_code;
  const BooksTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.title_ar = const Value.absent(),
    this.number_of_hadis = const Value.absent(),
    this.abvr_code = const Value.absent(),
    this.book_name = const Value.absent(),
    this.book_descr = const Value.absent(),
    this.color_code = const Value.absent(),
  });
  BooksTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String title_ar,
    required int number_of_hadis,
    required String abvr_code,
    required String book_name,
    required String book_descr,
    required String color_code,
  })  : title = Value(title),
        title_ar = Value(title_ar),
        number_of_hadis = Value(number_of_hadis),
        abvr_code = Value(abvr_code),
        book_name = Value(book_name),
        book_descr = Value(book_descr),
        color_code = Value(color_code);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? title_ar,
    Expression<int>? number_of_hadis,
    Expression<String>? abvr_code,
    Expression<String>? book_name,
    Expression<String>? book_descr,
    Expression<String>? color_code,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (title_ar != null) 'title_ar': title_ar,
      if (number_of_hadis != null) 'number_of_hadis': number_of_hadis,
      if (abvr_code != null) 'abvr_code': abvr_code,
      if (book_name != null) 'book_name': book_name,
      if (book_descr != null) 'book_descr': book_descr,
      if (color_code != null) 'color_code': color_code,
    });
  }

  BooksTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? title_ar,
      Value<int>? number_of_hadis,
      Value<String>? abvr_code,
      Value<String>? book_name,
      Value<String>? book_descr,
      Value<String>? color_code}) {
    return BooksTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      title_ar: title_ar ?? this.title_ar,
      number_of_hadis: number_of_hadis ?? this.number_of_hadis,
      abvr_code: abvr_code ?? this.abvr_code,
      book_name: book_name ?? this.book_name,
      book_descr: book_descr ?? this.book_descr,
      color_code: color_code ?? this.color_code,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (title_ar.present) {
      map['title_ar'] = Variable<String>(title_ar.value);
    }
    if (number_of_hadis.present) {
      map['number_of_hadis'] = Variable<int>(number_of_hadis.value);
    }
    if (abvr_code.present) {
      map['abvr_code'] = Variable<String>(abvr_code.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    if (book_descr.present) {
      map['book_descr'] = Variable<String>(book_descr.value);
    }
    if (color_code.present) {
      map['color_code'] = Variable<String>(color_code.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('title_ar: $title_ar, ')
          ..write('number_of_hadis: $number_of_hadis, ')
          ..write('abvr_code: $abvr_code, ')
          ..write('book_name: $book_name, ')
          ..write('book_descr: $book_descr, ')
          ..write('color_code: $color_code')
          ..write(')'))
        .toString();
  }
}

class $ChapterTableTable extends ChapterTable
    with TableInfo<$ChapterTableTable, Chapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChapterTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _chapter_idMeta =
      const VerificationMeta('chapter_id');
  @override
  late final GeneratedColumn<int> chapter_id = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_idMeta =
      const VerificationMeta('book_id');
  @override
  late final GeneratedColumn<int> book_id = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadis_rangeMeta =
      const VerificationMeta('hadis_range');
  @override
  late final GeneratedColumn<String> hadis_range = GeneratedColumn<String>(
      'hadis_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, chapter_id, book_id, title, number, hadis_range, book_name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapter_table';
  @override
  VerificationContext validateIntegrity(Insertable<Chapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
          _chapter_idMeta,
          chapter_id.isAcceptableOrUnknown(
              data['chapter_id']!, _chapter_idMeta));
    } else if (isInserting) {
      context.missing(_chapter_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_book_idMeta,
          book_id.isAcceptableOrUnknown(data['book_id']!, _book_idMeta));
    } else if (isInserting) {
      context.missing(_book_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('hadis_range')) {
      context.handle(
          _hadis_rangeMeta,
          hadis_range.isAcceptableOrUnknown(
              data['hadis_range']!, _hadis_rangeMeta));
    } else if (isInserting) {
      context.missing(_hadis_rangeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Chapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Chapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      hadis_range: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadis_range'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
    );
  }

  @override
  $ChapterTableTable createAlias(String alias) {
    return $ChapterTableTable(attachedDatabase, alias);
  }
}

class Chapter extends DataClass implements Insertable<Chapter> {
  final int id;
  final int chapter_id;
  final int book_id;
  final String title;
  final int number;
  final String hadis_range;
  final String book_name;
  const Chapter(
      {required this.id,
      required this.chapter_id,
      required this.book_id,
      required this.title,
      required this.number,
      required this.hadis_range,
      required this.book_name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapter_id);
    map['book_id'] = Variable<int>(book_id);
    map['title'] = Variable<String>(title);
    map['number'] = Variable<int>(number);
    map['hadis_range'] = Variable<String>(hadis_range);
    map['book_name'] = Variable<String>(book_name);
    return map;
  }

  ChapterTableCompanion toCompanion(bool nullToAbsent) {
    return ChapterTableCompanion(
      id: Value(id),
      chapter_id: Value(chapter_id),
      book_id: Value(book_id),
      title: Value(title),
      number: Value(number),
      hadis_range: Value(hadis_range),
      book_name: Value(book_name),
    );
  }

  factory Chapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Chapter(
      id: serializer.fromJson<int>(json['id']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      title: serializer.fromJson<String>(json['title']),
      number: serializer.fromJson<int>(json['number']),
      hadis_range: serializer.fromJson<String>(json['hadis_range']),
      book_name: serializer.fromJson<String>(json['book_name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'book_id': serializer.toJson<int>(book_id),
      'title': serializer.toJson<String>(title),
      'number': serializer.toJson<int>(number),
      'hadis_range': serializer.toJson<String>(hadis_range),
      'book_name': serializer.toJson<String>(book_name),
    };
  }

  Chapter copyWith(
          {int? id,
          int? chapter_id,
          int? book_id,
          String? title,
          int? number,
          String? hadis_range,
          String? book_name}) =>
      Chapter(
        id: id ?? this.id,
        chapter_id: chapter_id ?? this.chapter_id,
        book_id: book_id ?? this.book_id,
        title: title ?? this.title,
        number: number ?? this.number,
        hadis_range: hadis_range ?? this.hadis_range,
        book_name: book_name ?? this.book_name,
      );
  @override
  String toString() {
    return (StringBuffer('Chapter(')
          ..write('id: $id, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('book_id: $book_id, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadis_range: $hadis_range, ')
          ..write('book_name: $book_name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, chapter_id, book_id, title, number, hadis_range, book_name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chapter &&
          other.id == this.id &&
          other.chapter_id == this.chapter_id &&
          other.book_id == this.book_id &&
          other.title == this.title &&
          other.number == this.number &&
          other.hadis_range == this.hadis_range &&
          other.book_name == this.book_name);
}

class ChapterTableCompanion extends UpdateCompanion<Chapter> {
  final Value<int> id;
  final Value<int> chapter_id;
  final Value<int> book_id;
  final Value<String> title;
  final Value<int> number;
  final Value<String> hadis_range;
  final Value<String> book_name;
  const ChapterTableCompanion({
    this.id = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadis_range = const Value.absent(),
    this.book_name = const Value.absent(),
  });
  ChapterTableCompanion.insert({
    this.id = const Value.absent(),
    required int chapter_id,
    required int book_id,
    required String title,
    required int number,
    required String hadis_range,
    required String book_name,
  })  : chapter_id = Value(chapter_id),
        book_id = Value(book_id),
        title = Value(title),
        number = Value(number),
        hadis_range = Value(hadis_range),
        book_name = Value(book_name);
  static Insertable<Chapter> custom({
    Expression<int>? id,
    Expression<int>? chapter_id,
    Expression<int>? book_id,
    Expression<String>? title,
    Expression<int>? number,
    Expression<String>? hadis_range,
    Expression<String>? book_name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (book_id != null) 'book_id': book_id,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (hadis_range != null) 'hadis_range': hadis_range,
      if (book_name != null) 'book_name': book_name,
    });
  }

  ChapterTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapter_id,
      Value<int>? book_id,
      Value<String>? title,
      Value<int>? number,
      Value<String>? hadis_range,
      Value<String>? book_name}) {
    return ChapterTableCompanion(
      id: id ?? this.id,
      chapter_id: chapter_id ?? this.chapter_id,
      book_id: book_id ?? this.book_id,
      title: title ?? this.title,
      number: number ?? this.number,
      hadis_range: hadis_range ?? this.hadis_range,
      book_name: book_name ?? this.book_name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapter_id.present) {
      map['chapter_id'] = Variable<int>(chapter_id.value);
    }
    if (book_id.present) {
      map['book_id'] = Variable<int>(book_id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (hadis_range.present) {
      map['hadis_range'] = Variable<String>(hadis_range.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterTableCompanion(')
          ..write('id: $id, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('book_id: $book_id, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadis_range: $hadis_range, ')
          ..write('book_name: $book_name')
          ..write(')'))
        .toString();
  }
}

class $HadithTableTable extends HadithTable
    with TableInfo<$HadithTableTable, Hadith> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HadithTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _book_idMeta =
      const VerificationMeta('book_id');
  @override
  late final GeneratedColumn<int> book_id = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapter_idMeta =
      const VerificationMeta('chapter_id');
  @override
  late final GeneratedColumn<int> chapter_id = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _section_idMeta =
      const VerificationMeta('section_id');
  @override
  late final GeneratedColumn<int> section_id = GeneratedColumn<int>(
      'section_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadith_keyMeta =
      const VerificationMeta('hadith_key');
  @override
  late final GeneratedColumn<String> hadith_key = GeneratedColumn<String>(
      'hadith_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hadith_idMeta =
      const VerificationMeta('hadith_id');
  @override
  late final GeneratedColumn<int> hadith_id = GeneratedColumn<int>(
      'hadith_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _narratorMeta =
      const VerificationMeta('narrator');
  @override
  late final GeneratedColumn<String> narrator = GeneratedColumn<String>(
      'narrator', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bnMeta = const VerificationMeta('bn');
  @override
  late final GeneratedColumn<String> bn = GeneratedColumn<String>(
      'bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arMeta = const VerificationMeta('ar');
  @override
  late final GeneratedColumn<String> ar = GeneratedColumn<String>(
      'ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ar_diaclessMeta =
      const VerificationMeta('ar_diacless');
  @override
  late final GeneratedColumn<String> ar_diacless = GeneratedColumn<String>(
      'ar_diacless', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        book_id,
        book_name,
        chapter_id,
        section_id,
        hadith_key,
        hadith_id,
        narrator,
        bn,
        ar,
        ar_diacless,
        note
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hadith_table';
  @override
  VerificationContext validateIntegrity(Insertable<Hadith> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_book_idMeta,
          book_id.isAcceptableOrUnknown(data['book_id']!, _book_idMeta));
    } else if (isInserting) {
      context.missing(_book_idMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
          _chapter_idMeta,
          chapter_id.isAcceptableOrUnknown(
              data['chapter_id']!, _chapter_idMeta));
    } else if (isInserting) {
      context.missing(_chapter_idMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
          _section_idMeta,
          section_id.isAcceptableOrUnknown(
              data['section_id']!, _section_idMeta));
    } else if (isInserting) {
      context.missing(_section_idMeta);
    }
    if (data.containsKey('hadith_key')) {
      context.handle(
          _hadith_keyMeta,
          hadith_key.isAcceptableOrUnknown(
              data['hadith_key']!, _hadith_keyMeta));
    } else if (isInserting) {
      context.missing(_hadith_keyMeta);
    }
    if (data.containsKey('hadith_id')) {
      context.handle(_hadith_idMeta,
          hadith_id.isAcceptableOrUnknown(data['hadith_id']!, _hadith_idMeta));
    } else if (isInserting) {
      context.missing(_hadith_idMeta);
    }
    if (data.containsKey('narrator')) {
      context.handle(_narratorMeta,
          narrator.isAcceptableOrUnknown(data['narrator']!, _narratorMeta));
    } else if (isInserting) {
      context.missing(_narratorMeta);
    }
    if (data.containsKey('bn')) {
      context.handle(_bnMeta, bn.isAcceptableOrUnknown(data['bn']!, _bnMeta));
    } else if (isInserting) {
      context.missing(_bnMeta);
    }
    if (data.containsKey('ar')) {
      context.handle(_arMeta, ar.isAcceptableOrUnknown(data['ar']!, _arMeta));
    } else if (isInserting) {
      context.missing(_arMeta);
    }
    if (data.containsKey('ar_diacless')) {
      context.handle(
          _ar_diaclessMeta,
          ar_diacless.isAcceptableOrUnknown(
              data['ar_diacless']!, _ar_diaclessMeta));
    } else if (isInserting) {
      context.missing(_ar_diaclessMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Hadith map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Hadith(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      section_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      hadith_key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadith_key'])!,
      hadith_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hadith_id'])!,
      narrator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narrator'])!,
      bn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bn'])!,
      ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar'])!,
      ar_diacless: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar_diacless'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $HadithTableTable createAlias(String alias) {
    return $HadithTableTable(attachedDatabase, alias);
  }
}

class Hadith extends DataClass implements Insertable<Hadith> {
  final int id;
  final int book_id;
  final String book_name;
  final int chapter_id;
  final int section_id;
  final String hadith_key;
  final int hadith_id;
  final String narrator;
  final String bn;
  final String ar;
  final String ar_diacless;
  final String note;
  const Hadith(
      {required this.id,
      required this.book_id,
      required this.book_name,
      required this.chapter_id,
      required this.section_id,
      required this.hadith_key,
      required this.hadith_id,
      required this.narrator,
      required this.bn,
      required this.ar,
      required this.ar_diacless,
      required this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(book_id);
    map['book_name'] = Variable<String>(book_name);
    map['chapter_id'] = Variable<int>(chapter_id);
    map['section_id'] = Variable<int>(section_id);
    map['hadith_key'] = Variable<String>(hadith_key);
    map['hadith_id'] = Variable<int>(hadith_id);
    map['narrator'] = Variable<String>(narrator);
    map['bn'] = Variable<String>(bn);
    map['ar'] = Variable<String>(ar);
    map['ar_diacless'] = Variable<String>(ar_diacless);
    map['note'] = Variable<String>(note);
    return map;
  }

  HadithTableCompanion toCompanion(bool nullToAbsent) {
    return HadithTableCompanion(
      id: Value(id),
      book_id: Value(book_id),
      book_name: Value(book_name),
      chapter_id: Value(chapter_id),
      section_id: Value(section_id),
      hadith_key: Value(hadith_key),
      hadith_id: Value(hadith_id),
      narrator: Value(narrator),
      bn: Value(bn),
      ar: Value(ar),
      ar_diacless: Value(ar_diacless),
      note: Value(note),
    );
  }

  factory Hadith.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Hadith(
      id: serializer.fromJson<int>(json['id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      book_name: serializer.fromJson<String>(json['book_name']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      section_id: serializer.fromJson<int>(json['section_id']),
      hadith_key: serializer.fromJson<String>(json['hadith_key']),
      hadith_id: serializer.fromJson<int>(json['hadith_id']),
      narrator: serializer.fromJson<String>(json['narrator']),
      bn: serializer.fromJson<String>(json['bn']),
      ar: serializer.fromJson<String>(json['ar']),
      ar_diacless: serializer.fromJson<String>(json['ar_diacless']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'book_id': serializer.toJson<int>(book_id),
      'book_name': serializer.toJson<String>(book_name),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'section_id': serializer.toJson<int>(section_id),
      'hadith_key': serializer.toJson<String>(hadith_key),
      'hadith_id': serializer.toJson<int>(hadith_id),
      'narrator': serializer.toJson<String>(narrator),
      'bn': serializer.toJson<String>(bn),
      'ar': serializer.toJson<String>(ar),
      'ar_diacless': serializer.toJson<String>(ar_diacless),
      'note': serializer.toJson<String>(note),
    };
  }

  Hadith copyWith(
          {int? id,
          int? book_id,
          String? book_name,
          int? chapter_id,
          int? section_id,
          String? hadith_key,
          int? hadith_id,
          String? narrator,
          String? bn,
          String? ar,
          String? ar_diacless,
          String? note}) =>
      Hadith(
        id: id ?? this.id,
        book_id: book_id ?? this.book_id,
        book_name: book_name ?? this.book_name,
        chapter_id: chapter_id ?? this.chapter_id,
        section_id: section_id ?? this.section_id,
        hadith_key: hadith_key ?? this.hadith_key,
        hadith_id: hadith_id ?? this.hadith_id,
        narrator: narrator ?? this.narrator,
        bn: bn ?? this.bn,
        ar: ar ?? this.ar,
        ar_diacless: ar_diacless ?? this.ar_diacless,
        note: note ?? this.note,
      );
  @override
  String toString() {
    return (StringBuffer('Hadith(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('hadith_key: $hadith_key, ')
          ..write('hadith_id: $hadith_id, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('ar_diacless: $ar_diacless, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, book_id, book_name, chapter_id,
      section_id, hadith_key, hadith_id, narrator, bn, ar, ar_diacless, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Hadith &&
          other.id == this.id &&
          other.book_id == this.book_id &&
          other.book_name == this.book_name &&
          other.chapter_id == this.chapter_id &&
          other.section_id == this.section_id &&
          other.hadith_key == this.hadith_key &&
          other.hadith_id == this.hadith_id &&
          other.narrator == this.narrator &&
          other.bn == this.bn &&
          other.ar == this.ar &&
          other.ar_diacless == this.ar_diacless &&
          other.note == this.note);
}

class HadithTableCompanion extends UpdateCompanion<Hadith> {
  final Value<int> id;
  final Value<int> book_id;
  final Value<String> book_name;
  final Value<int> chapter_id;
  final Value<int> section_id;
  final Value<String> hadith_key;
  final Value<int> hadith_id;
  final Value<String> narrator;
  final Value<String> bn;
  final Value<String> ar;
  final Value<String> ar_diacless;
  final Value<String> note;
  const HadithTableCompanion({
    this.id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.book_name = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.section_id = const Value.absent(),
    this.hadith_key = const Value.absent(),
    this.hadith_id = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.ar_diacless = const Value.absent(),
    this.note = const Value.absent(),
  });
  HadithTableCompanion.insert({
    this.id = const Value.absent(),
    required int book_id,
    required String book_name,
    required int chapter_id,
    required int section_id,
    required String hadith_key,
    required int hadith_id,
    required String narrator,
    required String bn,
    required String ar,
    required String ar_diacless,
    required String note,
  })  : book_id = Value(book_id),
        book_name = Value(book_name),
        chapter_id = Value(chapter_id),
        section_id = Value(section_id),
        hadith_key = Value(hadith_key),
        hadith_id = Value(hadith_id),
        narrator = Value(narrator),
        bn = Value(bn),
        ar = Value(ar),
        ar_diacless = Value(ar_diacless),
        note = Value(note);
  static Insertable<Hadith> custom({
    Expression<int>? id,
    Expression<int>? book_id,
    Expression<String>? book_name,
    Expression<int>? chapter_id,
    Expression<int>? section_id,
    Expression<String>? hadith_key,
    Expression<int>? hadith_id,
    Expression<String>? narrator,
    Expression<String>? bn,
    Expression<String>? ar,
    Expression<String>? ar_diacless,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (book_id != null) 'book_id': book_id,
      if (book_name != null) 'book_name': book_name,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (section_id != null) 'section_id': section_id,
      if (hadith_key != null) 'hadith_key': hadith_key,
      if (hadith_id != null) 'hadith_id': hadith_id,
      if (narrator != null) 'narrator': narrator,
      if (bn != null) 'bn': bn,
      if (ar != null) 'ar': ar,
      if (ar_diacless != null) 'ar_diacless': ar_diacless,
      if (note != null) 'note': note,
    });
  }

  HadithTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? book_id,
      Value<String>? book_name,
      Value<int>? chapter_id,
      Value<int>? section_id,
      Value<String>? hadith_key,
      Value<int>? hadith_id,
      Value<String>? narrator,
      Value<String>? bn,
      Value<String>? ar,
      Value<String>? ar_diacless,
      Value<String>? note}) {
    return HadithTableCompanion(
      id: id ?? this.id,
      book_id: book_id ?? this.book_id,
      book_name: book_name ?? this.book_name,
      chapter_id: chapter_id ?? this.chapter_id,
      section_id: section_id ?? this.section_id,
      hadith_key: hadith_key ?? this.hadith_key,
      hadith_id: hadith_id ?? this.hadith_id,
      narrator: narrator ?? this.narrator,
      bn: bn ?? this.bn,
      ar: ar ?? this.ar,
      ar_diacless: ar_diacless ?? this.ar_diacless,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (book_id.present) {
      map['book_id'] = Variable<int>(book_id.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    if (chapter_id.present) {
      map['chapter_id'] = Variable<int>(chapter_id.value);
    }
    if (section_id.present) {
      map['section_id'] = Variable<int>(section_id.value);
    }
    if (hadith_key.present) {
      map['hadith_key'] = Variable<String>(hadith_key.value);
    }
    if (hadith_id.present) {
      map['hadith_id'] = Variable<int>(hadith_id.value);
    }
    if (narrator.present) {
      map['narrator'] = Variable<String>(narrator.value);
    }
    if (bn.present) {
      map['bn'] = Variable<String>(bn.value);
    }
    if (ar.present) {
      map['ar'] = Variable<String>(ar.value);
    }
    if (ar_diacless.present) {
      map['ar_diacless'] = Variable<String>(ar_diacless.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HadithTableCompanion(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('hadith_key: $hadith_key, ')
          ..write('hadith_id: $hadith_id, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('ar_diacless: $ar_diacless, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $SectionTableTable extends SectionTable
    with TableInfo<$SectionTableTable, Section> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _book_idMeta =
      const VerificationMeta('book_id');
  @override
  late final GeneratedColumn<int> book_id = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<int> book_name = GeneratedColumn<int>(
      'book_name', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapter_idMeta =
      const VerificationMeta('chapter_id');
  @override
  late final GeneratedColumn<int> chapter_id = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _section_idMeta =
      const VerificationMeta('section_id');
  @override
  late final GeneratedColumn<int> section_id = GeneratedColumn<int>(
      'section_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _prefaceMeta =
      const VerificationMeta('preface');
  @override
  late final GeneratedColumn<String> preface = GeneratedColumn<String>(
      'preface', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sort_orderMeta =
      const VerificationMeta('sort_order');
  @override
  late final GeneratedColumn<int> sort_order = GeneratedColumn<int>(
      'sort_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        book_id,
        book_name,
        chapter_id,
        section_id,
        title,
        preface,
        number,
        sort_order
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section_table';
  @override
  VerificationContext validateIntegrity(Insertable<Section> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_book_idMeta,
          book_id.isAcceptableOrUnknown(data['book_id']!, _book_idMeta));
    } else if (isInserting) {
      context.missing(_book_idMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
          _chapter_idMeta,
          chapter_id.isAcceptableOrUnknown(
              data['chapter_id']!, _chapter_idMeta));
    } else if (isInserting) {
      context.missing(_chapter_idMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
          _section_idMeta,
          section_id.isAcceptableOrUnknown(
              data['section_id']!, _section_idMeta));
    } else if (isInserting) {
      context.missing(_section_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('preface')) {
      context.handle(_prefaceMeta,
          preface.isAcceptableOrUnknown(data['preface']!, _prefaceMeta));
    } else if (isInserting) {
      context.missing(_prefaceMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
          _sort_orderMeta,
          sort_order.isAcceptableOrUnknown(
              data['sort_order']!, _sort_orderMeta));
    } else if (isInserting) {
      context.missing(_sort_orderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Section map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Section(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_name'])!,
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      section_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      preface: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preface'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      sort_order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!,
    );
  }

  @override
  $SectionTableTable createAlias(String alias) {
    return $SectionTableTable(attachedDatabase, alias);
  }
}

class Section extends DataClass implements Insertable<Section> {
  final int id;
  final int book_id;
  final int book_name;
  final int chapter_id;
  final int section_id;
  final String title;
  final String preface;
  final int number;
  final int sort_order;
  const Section(
      {required this.id,
      required this.book_id,
      required this.book_name,
      required this.chapter_id,
      required this.section_id,
      required this.title,
      required this.preface,
      required this.number,
      required this.sort_order});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(book_id);
    map['book_name'] = Variable<int>(book_name);
    map['chapter_id'] = Variable<int>(chapter_id);
    map['section_id'] = Variable<int>(section_id);
    map['title'] = Variable<String>(title);
    map['preface'] = Variable<String>(preface);
    map['number'] = Variable<int>(number);
    map['sort_order'] = Variable<int>(sort_order);
    return map;
  }

  SectionTableCompanion toCompanion(bool nullToAbsent) {
    return SectionTableCompanion(
      id: Value(id),
      book_id: Value(book_id),
      book_name: Value(book_name),
      chapter_id: Value(chapter_id),
      section_id: Value(section_id),
      title: Value(title),
      preface: Value(preface),
      number: Value(number),
      sort_order: Value(sort_order),
    );
  }

  factory Section.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Section(
      id: serializer.fromJson<int>(json['id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      book_name: serializer.fromJson<int>(json['book_name']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      section_id: serializer.fromJson<int>(json['section_id']),
      title: serializer.fromJson<String>(json['title']),
      preface: serializer.fromJson<String>(json['preface']),
      number: serializer.fromJson<int>(json['number']),
      sort_order: serializer.fromJson<int>(json['sort_order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'book_id': serializer.toJson<int>(book_id),
      'book_name': serializer.toJson<int>(book_name),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'section_id': serializer.toJson<int>(section_id),
      'title': serializer.toJson<String>(title),
      'preface': serializer.toJson<String>(preface),
      'number': serializer.toJson<int>(number),
      'sort_order': serializer.toJson<int>(sort_order),
    };
  }

  Section copyWith(
          {int? id,
          int? book_id,
          int? book_name,
          int? chapter_id,
          int? section_id,
          String? title,
          String? preface,
          int? number,
          int? sort_order}) =>
      Section(
        id: id ?? this.id,
        book_id: book_id ?? this.book_id,
        book_name: book_name ?? this.book_name,
        chapter_id: chapter_id ?? this.chapter_id,
        section_id: section_id ?? this.section_id,
        title: title ?? this.title,
        preface: preface ?? this.preface,
        number: number ?? this.number,
        sort_order: sort_order ?? this.sort_order,
      );
  @override
  String toString() {
    return (StringBuffer('Section(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sort_order: $sort_order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, book_id, book_name, chapter_id,
      section_id, title, preface, number, sort_order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Section &&
          other.id == this.id &&
          other.book_id == this.book_id &&
          other.book_name == this.book_name &&
          other.chapter_id == this.chapter_id &&
          other.section_id == this.section_id &&
          other.title == this.title &&
          other.preface == this.preface &&
          other.number == this.number &&
          other.sort_order == this.sort_order);
}

class SectionTableCompanion extends UpdateCompanion<Section> {
  final Value<int> id;
  final Value<int> book_id;
  final Value<int> book_name;
  final Value<int> chapter_id;
  final Value<int> section_id;
  final Value<String> title;
  final Value<String> preface;
  final Value<int> number;
  final Value<int> sort_order;
  const SectionTableCompanion({
    this.id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.book_name = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.section_id = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sort_order = const Value.absent(),
  });
  SectionTableCompanion.insert({
    this.id = const Value.absent(),
    required int book_id,
    required int book_name,
    required int chapter_id,
    required int section_id,
    required String title,
    required String preface,
    required int number,
    required int sort_order,
  })  : book_id = Value(book_id),
        book_name = Value(book_name),
        chapter_id = Value(chapter_id),
        section_id = Value(section_id),
        title = Value(title),
        preface = Value(preface),
        number = Value(number),
        sort_order = Value(sort_order);
  static Insertable<Section> custom({
    Expression<int>? id,
    Expression<int>? book_id,
    Expression<int>? book_name,
    Expression<int>? chapter_id,
    Expression<int>? section_id,
    Expression<String>? title,
    Expression<String>? preface,
    Expression<int>? number,
    Expression<int>? sort_order,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (book_id != null) 'book_id': book_id,
      if (book_name != null) 'book_name': book_name,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (section_id != null) 'section_id': section_id,
      if (title != null) 'title': title,
      if (preface != null) 'preface': preface,
      if (number != null) 'number': number,
      if (sort_order != null) 'sort_order': sort_order,
    });
  }

  SectionTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? book_id,
      Value<int>? book_name,
      Value<int>? chapter_id,
      Value<int>? section_id,
      Value<String>? title,
      Value<String>? preface,
      Value<int>? number,
      Value<int>? sort_order}) {
    return SectionTableCompanion(
      id: id ?? this.id,
      book_id: book_id ?? this.book_id,
      book_name: book_name ?? this.book_name,
      chapter_id: chapter_id ?? this.chapter_id,
      section_id: section_id ?? this.section_id,
      title: title ?? this.title,
      preface: preface ?? this.preface,
      number: number ?? this.number,
      sort_order: sort_order ?? this.sort_order,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (book_id.present) {
      map['book_id'] = Variable<int>(book_id.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<int>(book_name.value);
    }
    if (chapter_id.present) {
      map['chapter_id'] = Variable<int>(chapter_id.value);
    }
    if (section_id.present) {
      map['section_id'] = Variable<int>(section_id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (preface.present) {
      map['preface'] = Variable<String>(preface.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (sort_order.present) {
      map['sort_order'] = Variable<int>(sort_order.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionTableCompanion(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sort_order: $sort_order')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $BooksTableTable booksTable = $BooksTableTable(this);
  late final $ChapterTableTable chapterTable = $ChapterTableTable(this);
  late final $HadithTableTable hadithTable = $HadithTableTable(this);
  late final $SectionTableTable sectionTable = $SectionTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [booksTable, chapterTable, hadithTable, sectionTable];
}
