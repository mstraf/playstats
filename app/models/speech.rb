class Speech < ActiveRecord::Base
  belongs_to :scene
  belongs_to :persona
  has_many :lines
end
