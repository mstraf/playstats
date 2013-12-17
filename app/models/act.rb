class Act < ActiveRecord::Base
  belongs_to :play
  has_many :scenes
end
