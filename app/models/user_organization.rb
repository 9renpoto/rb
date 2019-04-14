# frozen_string_literal: true

class UserOrganization < ApplicationRecord
  belongs_to :organizaion
  belongs_to :user
end
