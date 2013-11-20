class Review < ActiveRecord::Base
  belongs_to :product, touch: true
end
