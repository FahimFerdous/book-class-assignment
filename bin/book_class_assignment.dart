class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;
  //constructor
  Book(this.title, this.author, this.publicationYear, this.pagesRead){
    totalBooks++;
  }
  //methods
  void read(int pages){
    pagesRead += pages;
  }

  //getters
  int getPagesRead(){
    return pagesRead;
  }
  String getTitle(){
    return title;
  }
  String getAuthor(){
    return author;
  }
  int getPublicationYear(){
    return publicationYear;
  }

  int getBookAge(){
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main(){
  Book book1 = Book('I Robot', 'Isac Asimov', 1950, 30);
  Book book2 = Book('Rich Dad Poor Dad', 'Robert Kiyosaki', 1997, 50);
  Book book3 = Book('The Alchemist', 'Paulo Coelho', 1988, 0);

  book1.read(50);
  book2.read(25);
  book3.read(100);

  List<Book> books = [book1, book2, book3];

  for (var i=0; i<books.length; i++){
    print('Book ${i+1}');
    print('Title: ${books[i].getTitle()}');
    print("Author: ${books[i].getAuthor()}");
    print('Publication Year: ${books[i].getPublicationYear()}');
    print("Pages Read: ${books[i].getPagesRead()}");
    print("Book Age: ${books[i].getBookAge()} years old");
    print("\n");
  }

  print("Total Number of Books: ${Book.totalBooks}");
}
