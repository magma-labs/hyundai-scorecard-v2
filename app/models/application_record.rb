# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.all_to_json
    all.to_json
  end

  def to_json(default_params = {})
    default_params[:except] = %i[updated_at created_at]
    super(default_params)
  end
end
