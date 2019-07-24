class Mentor < User
  has_many :burpies_given, class_name: :Burpy

  def mentor?
    true
  end
end