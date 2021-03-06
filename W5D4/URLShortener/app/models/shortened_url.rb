# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  short_url  :string           not null
#  long_url   :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
  validates :short_url, presence: true
  validates :long_url, presence: true
  validates :user_id, presence: true

  def self.random_code
    code = SecureRandom.urlsafe_base64
    return code unless short_url[code].exists?
  end
end
