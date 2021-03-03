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
require 'rails_helper'

RSpec.describe Flower, type: :model do
  it { should validate_presence_of(:flower_type) }
  it { should belong_to(:gardener).class_name(:User) }
  it { should belong_to(:garden).class_name(:Garden) }
end
