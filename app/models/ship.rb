class Ship < ActiveRecord::Base
  belongs_to :user, :shiptype
end
