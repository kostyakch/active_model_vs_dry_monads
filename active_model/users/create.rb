# frozen_string_literal: true

class Users::CreateUser
  include ActiveModel::Model
  attr_accessor :actor, :email, :phone, :role,
                :first_name, :last_name, :middle_name, :result
  validates :email, :phone, :role, presence: true
  validate :role_should_valid,
           :email_should_be_uniqueness,
           :phone_should_be_uniqueness

  def call
    return false unless valid?

    create_user
    errors.blank?
  end

  private

  def create_user
    # Creates user with role
  end

  def role_should_valid
    # Validate role

    errors.add(:role, 'should be valid')
  end

  def email_should_be_uniqueness
    # Validate email
    errors.add(:email, 'email.taken')
  end

  def phone_should_be_uniqueness
    # Validate phone

    errors.add(:phone, 'phone.taken')
  end
end
