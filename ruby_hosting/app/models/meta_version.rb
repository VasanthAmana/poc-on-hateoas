class MetaVersion < ActiveRecord::Base
  has_many :meta_model
  attr_accessible :name
end
