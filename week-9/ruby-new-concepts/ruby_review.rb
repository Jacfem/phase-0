# # OO Basics: Student
#
# # I worked on this challenge with Katherine.
# # This challenge took me [#] hours.
#
# # Pseudocode
#
#
#
# # Initial Solution
#
class Student
  attr_accessor :scores, :first_name

  def initialize(student_arguments)
    @first_name = student_arguments[:first_name]
    @scores = student_arguments[:scores]
  end

  def average
    scores_sum = 0
    @scores.each {|num| scores_sum += num}
    average = scores_sum/5
  end

  def letter_grade
    average
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
  end
end #For class


alex = Student.new({first_name: "Alex",
        scores: [100,100,100,0,100]})

jackie = Student.new({first_name: "Jackie",
        scores: [50, 50, 50, 50, 50]})

kat = Student.new({first_name: "Katherine",
        scores: [100, 80, 70, 60, 50]})

john = Student.new({first_name: "John",
        scores: [100,70,100,0,100]})

tony = Student.new({first_name: "Tony",
        scores: [100,60,100,0,100]})

students = [alex, jackie, kat, john, tony]
#LINEAR SEARCH
  def linear_search(array, first_name)
      index = 0
      if array[index].first_name == first_name
        return index
      index += 1
      else
        -1
      end
    end


# Refactored Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(student_arguments)
    @first_name = student_arguments[:first_name]
    @scores = student_arguments[:scores]
  end

  def average
    scores_sum = 0
    @scores.each {|num| scores_sum += num}
    average = scores_sum/5
  end

def letter_grade
    case average
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
      else "F"
    end
  end
end # For class

alex = Student.new({first_name: "Alex",
        scores: [100,100,100,0,100]})

jackie = Student.new({first_name: "Jackie",
        scores: [50, 50, 50, 50, 50]})

kat = Student.new({first_name: "Katherine",
        scores: [100, 80, 70, 60, 50]})

john = Student.new({first_name: "John",
        scores: [100,70,100,0,100]})

tony = Student.new({first_name: "Tony",
        scores: [100,60,100,0,100]})

students = [alex, jackie, kat, john, tony]

def linear_search(array, first_name)
    index = 0
    if array[index].first_name == first_name
      return index
    index += 1
    else
      -1
    end
  end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1




# Reflection
# binding.pry #Put at break point #Exit with: !!!!
# require 'pry' #Put at top of file
