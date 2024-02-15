


// import 'package:get/get.dart';
// import 'package:my_al_hadith_app/domain/entities/books.dart';
// import 'package:my_al_hadith_app/domain/usecases/get_all_books.dart';
//
// class HomeController extends GetxController {
//   final GetAllBooks getAllBooks;
//
//   HomeController({required this.getAllBooks});
//
//   final _books = <Book>[].obs;
//   final _isLoading = true.obs;
//   final _hasError = false.obs;
//   final _errorMessage = ''.obs;
//
//   List<Book> get books => _books;
//   bool get isLoading => _isLoading.value;
//   bool get hasError => _hasError.value;
//   String get errorMessage => _errorMessage.value;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchBooks();
//   }
//
//   Future<void> fetchBooks() async {
//     try {
//       _isLoading.value = true;
//       final booksResult = await getAllBooks.execute();
//       _books.assignAll(booksResult);
//     } catch (e) {
//       _hasError.value = true;
//       _errorMessage.value = e.toString();
//     } finally {
//       _isLoading.value = false;
//     }
//   }
// }
