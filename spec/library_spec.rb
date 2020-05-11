require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestLibrary < MiniTest::Test



def test_book
  new_book = Library.new("Revenge of the Lawn", "")
  assert_equal("Revenge of the Lawn", new_book.book)
end
















end
