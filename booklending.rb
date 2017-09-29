class Book

  def initialize(book_title, author, isbn)
    @book_title = book_title
    @author = author
    @isbn = isbn
    @@on_shelf = []
    @@on_loan = []
  end

  def due_date

  end

  def borrow(name)
    if lent_out?(name)
      return false
    else
      @due_date = Book.current_due_date
      @@on_loan << borrow
    end

  end

  def return_to_library
    if lent_out? = true
      @@onshelf << self
      @due_date = nil
      return true
    else
      return false
    end
  end

  def lent_out?(name)
    return @@on_loan.include?(name)
  end

  def self.create(book_title, author, isbn)
    new_book = Book.new(book_title, author, isbn)
    @@on_shelf<< new_book
    return new_book
  end

  def self.current_due_date
    return Time.now + 3600
  end

  def self.overdue_books
    overdue_books = []
    @@on_loan.each do |book|
      if book.due_date < Time.now
        overdue_books << book
      end
  end

  def self.browse
    random_book = @@on_shelf.sample
  end

  def self.available
    return @@onshelf
  end

  def self.borrowed
    return @@on_loan
  end



    end
  @@on_loan.select do |out|
    out.dolen
    ##lent_out?
#This instance method return true if a book has already been borrowed and false otherwise.
  end


  end
end
