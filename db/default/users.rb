# frozen_string_literal: true

user = User.find_or_create_by(name: 'admin', email: 'admin@example.com') do |u|
  u.password = 'test123'
  u.password_confirmation = 'test123'
  u.role = 'Admin'
end

user.zones << Zone.first unless user.zone_ids.include?(Zone.first.id)
