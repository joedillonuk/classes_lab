class Library

    attr_accessor :library_list

  def initialize(library_list)
    @library_list = library_list
  end


  def full_library
    return @library_list
  end



def get_book_details(book)
book_found = []
  for item in @library_list
    if item[:title] == book
      return book_found.push(item)
    end
  end
  return book_found
end

def get_rental_details(book)
  for item in @library_list
    if item[:title] == book
      return item[:rental_details]
    end
  end
  return "Not Found"
end

def add_new_book(new_book)
  @library_list.push(new_book)
end


def edit_book_details(book, student, date)
for item in @library_list
  if item[:title] == book
    item[:rental_details][:student_name] = student
    item[:rental_details][:date] = date
  end
end
end



end
