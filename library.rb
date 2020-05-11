class Library

    attr_accessor :library_list

  def initialize(library_list)
    @library_list = library_list
  end

  def full_library
    return @library_list
  end

end
