# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
class Blog < ApplicationRecord
  #  author_id  d
validates :title, presence:true, uniqueness:{scope: :author_id}
validates :body, presence:true

belongs_to :author,
foreign_key: :author_id,
class_name: :User

has_many :comments,
foreign_key: :blog_id,
class_name: :Comment,
dependent: :destroy

end
