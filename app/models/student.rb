class Student

  attr_reader :name
  @@all = []

  def initialize(name)
    # * should initialize with `first_name`
    @name = name
    @@all << self
  end


  def self.all
    # * `Student.all` should return all of the student instances
    @@all
  end


  def add_boating_test(test_name, test_status, instructor)
  # * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

    # student, instructor, test_name, test_status
    BoatingTest.new(self, instructor, test_name, test_status)
  end


  def self.find_student(name)
  # * `Student.find_student` will take in a first name and output the student (Object) with that name
    Student.all.filter { |student| student.name == name }
  end


  def all_student_tests
    # method to find all instances of tests that a student has taken
    BoatingTest.all.filter { |test| test.student == self }
  end


  def grade_percentage
  # * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
    all_student_tests.filter { |test| test.test_status == 'passed'}.size.to_f / all_student_tests.size
  end
end
