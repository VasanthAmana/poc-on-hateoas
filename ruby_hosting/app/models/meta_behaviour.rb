class MetaBehaviour < ActiveRecord::Base
  belongs_to :meta_model
  attr_accessible :description, :method, :name, :path
end
