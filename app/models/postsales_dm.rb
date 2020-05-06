# frozen_string_literal: true

class PostsalesDm < ApplicationRecord
  has_many :dealers
  validates :name, uniqueness: true
end
