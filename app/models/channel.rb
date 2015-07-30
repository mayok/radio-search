class Channel < ActiveRecord::Base
  validates :title, presence: true 
end
