# == Schema Information
#
# Table name: flowers
#
#  id          :bigint           not null, primary key
#  flower_type :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  garden_id   :integer          not null
#  gardener_id :integer          not null
#
# Indexes
#
#  index_flowers_on_garden_id    (garden_id)
#  index_flowers_on_gardener_id  (gardener_id)
#
class Flower < ApplicationRecord
#  garden_id   :integer          not null
#  gardener_id :integer 

validates :flower_type, presence: true

belongs_to :gardener,
foreign_key: :gardener_id,
class_name: :User

belongs_to :garden,
foreign_key: :garden_id,
class_name: :Garden


end
