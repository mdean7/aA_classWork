class Enrollment < ApplicationRecord

  belongs_to :user,#this creates a instance method called "user"
  foreign_key: :student_id,
  class_name: :User

  belongs_to :course,#use me for source
  foreign_key: :course_id,
  class_name: :Course



end
