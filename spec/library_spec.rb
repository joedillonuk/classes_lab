require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestLibrary < MiniTest::Test

# to save setting up the library inside each test
# this will be used for each test AS IS (unmodified by previous tests).
def setup
  @library1 = Library.new(
    [
      {
        title: "Revenge of the Lawn",
      rental_details: {
       student_name: "Richard",
       date: "20/05/20"
      }
},
{
  title: "Lanark",
      rental_details: {
       student_name: "Alasdair",
       date: "21/05/20"
      }
  },
  {title: "Pale Fire",
      rental_details: {
       student_name: "Vladimir",
       date: "09/05/20"
      }
  },
  {
    title: "Oor Wullie",
      rental_details: {
       student_name: "A'body",
       date: "01/06/20"
      }
  }])
end


# returns the full library array/hashes
def test_full_library
  assert_equal(
    [
      {
        title: "Revenge of the Lawn",
      rental_details: {
       student_name: "Richard",
       date: "20/05/20"
      }
},
{
  title: "Lanark",
      rental_details: {
       student_name: "Alasdair",
       date: "21/05/20"
      }
  },
  {title: "Pale Fire",
      rental_details: {
       student_name: "Vladimir",
       date: "09/05/20"
      }
  },
  {
    title: "Oor Wullie",
      rental_details: {
       student_name: "A'body",
       date: "01/06/20"
      }
  }],

     @library1.full_library)
end













end
