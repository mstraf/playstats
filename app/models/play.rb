class Play < ActiveRecord::Base
  has_many :personas
  has_many :acts
end
