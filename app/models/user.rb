# frozen_string_literal: true

class User < ApplicationRecord
  has_many :links

  validates :name, presence: true, length: { minimum: 1 }
  validates :email, uniqueness: true
end
