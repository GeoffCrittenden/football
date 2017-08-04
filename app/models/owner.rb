class Owner < ActiveRecord::Base
  has_one :team
end
