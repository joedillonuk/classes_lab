class Library

    attr_accessor :book, :rental_details

  def initialize(book, rental_details)
    @book = book
    @rental_details = rental_details
  end

  def book
    return @book
  end



end
