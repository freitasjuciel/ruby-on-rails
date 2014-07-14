class Record < ActiveRecord::Base
  belongs_to :training
  belongs_to :student
end
