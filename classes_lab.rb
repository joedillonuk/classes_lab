class Student
  # attr_reader :student_name, :student_cohort
  # attr_writer :student_name, :student_cohort
  # attr_accessor :student_name, :student_cohort

  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

  # getters

  def student_name
    return @student_name
  end

  def student_cohort
    return @student_cohort
  end

  # setters

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    @student_cohort = new_cohort
  end

  # methods
  def talk
    return "I can talk!"
  end

  def advertise(product)
    p "My name is #{@student_name} and I love #{product}!"
  end

end
