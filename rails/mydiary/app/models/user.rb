class Entry < ActiveRecord::Base
  has_many :entries
  attr_accessible :content, :title
end
