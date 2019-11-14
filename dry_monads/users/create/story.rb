# frozen_string_literal: true

module Users::Create
  class Story 
    def call(args)
      return Failure(validation.errors.to_h) if validation.failure?

      Try() { create_user }.to_result
    end

    private

    def create_user
      # Creates user with role
    end
  end
end
