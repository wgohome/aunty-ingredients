class Order < ApplicationRecord
  # relationship
  belongs_to :user
  belongs_to :payment
end
