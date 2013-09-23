class Pinn < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true

  belongs_to :user
end