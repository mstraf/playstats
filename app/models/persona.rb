class Persona < ActiveRecord::Base
  belongs_to :play
  has_many :speeches
end
