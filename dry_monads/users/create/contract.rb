# frozen_string_literal: true

module Users::Create
  class Contract
    params do
      required(:email).filled(:string)
      required(:phone).value(:string)
      required(:role).value(:string)
      optional(:first_name).value(:string)
      optional(:last_name).value(:string)
      optional(:middle_name).value(:string)
    end

    rule(:email) do
      # Validate email
      key.failure('email.taken')
    end

    rule(:phone) do
      # Validate phone
      key.falure('phone.taken')
    end
  end
end
