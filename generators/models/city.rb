class City < ActiveRecord::Base
  has_many :districts
  belongs_to :region
end
