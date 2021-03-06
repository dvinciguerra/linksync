# frozen_string_literal: true

class Link < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :url, presence: true, uniqueness: true, format: { with: %r{\Ahttps?://}, message: "invalid format" }
end
