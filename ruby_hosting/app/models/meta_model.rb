class MetaModel < ActiveRecord::Base
  belongs_to :meta_service
  has_many :meta_property, :dependent => :destroy
  has_many :meta_behaviour, :dependent => :destroy
  has_one :meta_version

  attr_accessible :description, :media_type, :name
end
