class Scene < ActiveRecord::Base
  belongs_to :act
  has_many :speeches
end
