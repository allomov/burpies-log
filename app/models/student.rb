class Student < User
  has_many :burpies_recieved, class_name: :Burpy
end