class User < ApplicationRecord
  has_and_belongs_to_many :issues
  validates :email, presence: true, uniqueness: true

  def as_simple_json
    "#{name} (#{email})"
  end
end
