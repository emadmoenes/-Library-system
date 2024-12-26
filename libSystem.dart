void main() {
  print("     ----------Welcome to the Library System-------------");
  // create a library object
  Library library = Library();

  //add users to the library
  library.addUser(User("Emad moanes", 12345));
  library.addUser(User("Bssant hossam", 67890));
  library.addUser(User("Ali ahmed", 34567));

  //add books to the library
  library.addBook(Book("The Alchemist", 12345, false));
  library.addBook(Book("To Kill a Mockingbird", 67890, false));
  library.addBook(Book("1984", 34567, false));

  // borrow a book
  library.borrowBook(12345, 12345);
  library.borrowBook(67890, 67890);
  library.borrowBook(34567, 34567);

  // return a book
  library.returnBook(12345, 12345);

  // display library info
  library.displayInfo();

  // borrow a book that is already borrowed
  library.borrowBook(12345, 67890);

  // return a book that is not borrowed
  library.returnBook(34567, 12345);

  // display library info
  library.displayInfo();
}

// Books class
class Book {
  String title;
  int id;
  bool isBorrowed;

  // Constructor
  Book(this.title, this.id, this.isBorrowed);

  // Method to display info of the book
  void displayInfo() {
    print("Title: $title");
    print("ID: $id");
    print("Is borrowed: $isBorrowed");
  }
}

// users class
class User {
  String name;
  int id;

  //constructor
  User(this.name, this.id);

  // display user info
  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
  }
}

// Library class
class Library {
  List<Book> books = [];
  List<User> users = [];

  // method to add book to the library
  void addBook(Book book) {
    books.add(book);
    print("Book ${book.title} has been added to the library");
  }

  // method to add user to the library
  void addUser(User user) {
    users.add(user);
    print("User ${user.name} has been added to the library");
  }

  // method to borrow a book with book id and user id
  void borrowBook(int bookId, int userId) {
    Book book = books.firstWhere((book) => book.id == bookId);
    User user = users.firstWhere((user) => user.id == userId);

    if (book.isBorrowed) {
      print('Book ${book.title} is already borrowed by ${user.name}');
      return;
    }

    book.isBorrowed = true;
    print('Book ${book.title} has been borrowed by ${user.name}');
  }

  // method to return a book with book id and user id
  void returnBook(int bookId, int userId) {
    Book book = books.firstWhere((book) => book.id == bookId);
    User user = users.firstWhere((user) => user.id == userId);

    if (!book.isBorrowed) {
      print('Book ${book.title} is not borrowed by ${user.name}');
      return;
    }

    book.isBorrowed = false;
    print('Book ${book.title} has been returned by ${user.name}');
  }

  // method to display all books and user in the library
  void displayInfo() {
    print("-----------------------Library Info-----------------------");
    print("Books in the library:");
    books.forEach((book) => book.displayInfo());
    print("Users in the library:");
    users.forEach((user) => user.displayInfo());
    print("----------------------------------------------------------");
  }
}
