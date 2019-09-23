class BoatingTest

  attr_reader :student, :instructor, :test_name
  attr_accessor :test_status
  @@all = []

  def initialize(student, instructor, test_name, test_status)
  # * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    @student = student
    @instructor = instructor
    @test_name = test_name
    @test_status = test_status
    @@all << self
  end

  def self.all
  # * `BoatingTest.all` returns an array of all boating tests
    @@all
  end
end
