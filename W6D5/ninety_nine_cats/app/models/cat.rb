# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  birthdate   :date             not null
#  color       :string
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "date"

class Cat < ApplicationRecord



  validates :sex, inclusion: %w(M F)
  validates :color, inclusion: %w(White Black Red Ginger Blue Grey Cream Brown Cinnamon Fawn)

def age_calc
 birthdate = self.birthdate
  today = Date.today
  age = today.year - birthdate.year

    if today.month < birthdate.month
      age = age-1
    end

  return age
end

end
