class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "<%= class_name %>"
  belongs_to :rateable, :polymorphic => true
  
  attr_accessible :rate, :dimension
end
