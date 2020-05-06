# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :dealers
  validates :name, presence: true, uniqueness: true
end
