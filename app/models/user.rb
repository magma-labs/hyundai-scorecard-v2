# frozen_string_literal: true

class User < ApplicationRecord
  validates :password, length: { minimum: 6 }, allow_blank: true
  after_initialize :default_values

  def default_values
    self.role ||= :Dealer
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :dealers, dependent: :destroy
  has_and_belongs_to_many :zones, dependent: :destroy
  has_and_belongs_to_many :postsales_dms, dependent: :destroy

  def postsales_dm
    postsales_dms.first
  end

  def zone
    zones.first
  end

  scope :by_name, ->(name) { where('unaccent(name) ILIKE unaccent(?) ', "%#{name}%") }
  scope :by_email, ->(email) { where('email ILIKE ? ', "%#{email}%") }

  enum role: %i[Admin Dealer DM_Ventas DM_Postventas General]
  validates :role, presence: true

  # There are some shared permissions between Admin and General role
  # This method avoid us to use the Admin? || General? validation
  def executive?
    Admin? || General?
  end

  def remove_zones
    zones.destroy_all
  end

  def remove_postsales_dms
    postsales_dms.destroy_all
  end

  def remove_dealers
    dealers.destroy_all
  end
end
