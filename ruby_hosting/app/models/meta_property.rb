class MetaProperty < ActiveRecord::Base
  belongs_to :meta_model
  attr_accessible :description, :name, :nullable, :type
end
