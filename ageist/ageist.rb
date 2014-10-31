
# DO IT AS A CONJOINED IF STATEMENT
# def ageist age
#   if age <= 1
#     status = "baby"
#   elsif age > 1 && age <=10
#     status = "child"
#   elsif age >10 && age <=12
#     status = "tween"
#   elsif age >12 && age <=19
#     status = "teenger"
#   elsif age >19 && age <=40
#     status = "adult"
#   elsif age >40 && age <=65
#     status = "middle-age"
#   elsif age >65 && age <=100
#     status = "senior"
#   elsif age >100
#     status = "old as .."
#   end
#
#   return status
# end

#DO IT WITH RANGES
def ageist age
  if age <= 1
    status = "baby"
  elsif (1..10) === age
    status = "child"
  elsif (11..12) === age
    status = "tween"
  elsif (13..19) === age
    status = "teenger"
  elsif (20..40) === age
    status = "adult"
  elsif (41..65) === age
    status = "middle-age"
  elsif (66..100) === age
    status = "senior"
  elsif age >100
    status = "old as .."
  end

  return status
end

#DO IT WITH CASE
# def ageist age
#   case age
#     when (0..1)
#       status = "baby"
#     when (1..10)
#       status = "child"
#     when (11..12)
#       status = "tween"
#     when (13..19)
#       status = "teenger"
#     when (20..40)
#       status = "adult"
#     when (41..65)
#       status = "middle-age"
#     when (66..100)
#       status = "senior"
#     when (101..110)
#       status = "old as .."
#   end
#
#   return status
# end


num = rand(111)

puts "The age of this person is #{num}."
puts "This person is a #{ageist(num)}."
