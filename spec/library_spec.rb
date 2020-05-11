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


              # seaches for book by string and returns all details.
              def test_get_book_details
                assert_equal([{
                  title: "Revenge of the Lawn",
                  rental_details: {
                    student_name: "Richard",
                    date: "20/05/20"
                  }
                  }], @library1.get_book_details("Revenge of the Lawn"))
                end

                # searches for book by string and returns rental details only
                def test_get_rental_details
                  assert_equal({
                    student_name: "Richard",
                    date: "20/05/20"
                    }, @library1.get_rental_details("Revenge of the Lawn"))
                  end


                  # Took far longer than anticipated on this one because I was adding a "new_book" variable, giving that the value of the @library1.add_new_book and asserting that new_book == get_book_details(new_book). It kept returning the details of the full array but I didn't realise that was what new_book contained, rather than what get_book_details was returning. Also my formatting is absolute wild and this is an incredibly long single line but it might help me to remember this so I'm writing it down.
                  def test_add_new_book
                    @library1.add_new_book({
                      title: "What We Talk About When We Talk About Love",
                      rental_details: {
                        student_name: "Raymond",
                        date: "16/06/2020"
                      }
                      })

                      assert_equal([{
                        title: "What We Talk About When We Talk About Love",
                        rental_details: {
                          student_name: "Raymond",
                          date: "16/06/2020"
                        }
                        }], @library1.get_book_details("What We Talk About When We Talk About Love"))
                      end

                      def test_edit_book_details
                        @library1.edit_book_details("Pale Fire", "Kinbote", "25/06/2020")
                        assert_equal([{:title=>"Pale Fire", :rental_details=>{:student_name=>"Kinbote", :date=>"25/06/2020"}}], @library1.get_book_details("Pale Fire"))
                      end



                    end
