class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates_length_of :content,{:maximum => 25, :minimum => 8,}
  validates_presence_of :user_id,{presence => true}
end
