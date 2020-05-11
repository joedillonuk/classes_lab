require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_lab.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestStudent < MiniTest::Test




  def test_student_name
    new_student = Student.new("Dan Hibiki", "G19")
    assert_equal("Dan Hibiki", new_student.student_name)
  end

  def test_student_cohort
    new_student = Student.new("Dan Hibiki", "G19")
    assert_equal("G19", new_student.student_cohort)
  end

  def test_set_student_name
    new_student = Student.new("Dan Hibiki", "G19")
    new_student.set_student_name("Just Dan")
    assert_equal("Just Dan", new_student.student_name)
  end

  def test_set_student_cohort
    new_student = Student.new("Dan Hibiki", "G19")
    new_student.set_student_cohort("G20")
    assert_equal("G20", new_student.student_cohort)
  end


  def test_talk
    new_student = Student.new("Dan Hibiki", "G19")
    new_student.talk
    assert_equal("I can talk!", new_student.talk)
  end

  def test_advertise
    new_student = Student.new("Dan Hibiki", "G19")
    # new_student.advertise("Ruby")
    assert_equal("My name is Dan Hibiki and I love Ruby!", new_student.advertise("Ruby"))
end



end
